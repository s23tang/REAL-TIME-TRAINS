#include "io.h"
#include "wtA4.h"
#include "nameServer.h"
#include "syscalls.h"
#include "notifier.h"

// Turn off the fifo
int setfifo( int channel, int state ) {
	int *line, buf;
	switch( channel ) {
	case COM1:
		line = (int *)( UART1_BASE + UART_LCRH_OFFSET );
	        break;
	case COM2:
	    line = (int *)( UART2_BASE + UART_LCRH_OFFSET );
	    break;
	default:
	    return -1;
	    break;
	}
	buf = *line;
	buf = state ? buf | FEN_MASK : buf & ~FEN_MASK;
	*line = buf;
	return 0;
}

//-----------------------------------------------------------------------------------------------
//	Calling task blocks and gets the character from the UART(1,2) Get Server
//-----------------------------------------------------------------------------------------------
int Getc( int server, int channel ) {
	ComReqStruct send, reply;

	send.type = UART2GET_REQ;
	Send( server, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	return reply.data1;
} // Getc

//-----------------------------------------------------------------------------------------------
//	Calling task blocks and gets the character from the UART(1,2) Get Server
//-----------------------------------------------------------------------------------------------
int Putc( int server, int channel, char ch ) {
	ComReqStruct send, reply;

	send.type = UART2XMIT_REQ;
	send.data1 = ch;
	Send( server, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	return reply.type;
} // Getc

//-----------------------------------------------------------------------------------------------
//	Server that handle putc for UART 2
//-----------------------------------------------------------------------------------------------
void uart2GetServer( ){
	if ( RegisterAs( "u2g" ) == -1 ) {
		bwprintf( COM2, "uart2GetServer: register failed\n\r" );
		Exit();
	}

	// Create notifier
	unsigned int notiTid;
	void (*noti)();
	noti = notifier;
	notiTid = Create( 0, noti );

	// Initializing
	int reqTid;
	char rcvQueue[IO_SIZE];
	int rcvStart = 0;				// start index of the ring buffer
	int rcvEnd = 0;			    // end index of the ring buffer
	int getQueue[MAX_TASKS];               // Assume we have 50 that wants to io (might be changed when we finish project)
	int getStart = 0;				// start index of the ring buffer
	int getEnd = 0; 				// end index of the ring buffer

	// Let notifier know that its done
	ComReqStruct send, reply;
	send.type = UART2GET;
	Send( notiTid, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	// Start server
	FOREVER {
		int temp = Receive( &reqTid, (char *)&reply, sizeof(ComReqStruct) );
		switch( reply.type ) {
			case NOTI_REQ:
				{
					// reply to server
					send.type = REQUEST_OK;
					Reply( notiTid, (char *)&send, sizeof(ComReqStruct) );

					if (getStart == getEnd)   // nobody is waiting for the character 
					{
						// put the character into the rcvQueue
						rcvQueue[rcvEnd] = (char) reply.data1;
						rcvEnd = (rcvEnd + 1) % IO_SIZE;
					} else {
						// extract next client who is waiting for a character
						int client = getQueue[getStart];
						getStart = (getStart + 1) % MAX_TASKS;
						send.data1 = reply.data1;
						Reply(client, (char *)&send, sizeof(ComReqStruct));
					}
				}
				break;
			case UART2GET_REQ:
				{
					if (rcvStart == rcvEnd)   //receive queue is empty, insert the request into getQ
					{
						getQueue[getEnd] = reqTid;
						getEnd = (getEnd + 1) % MAX_TASKS;
					} else {
						send.data1 = (int) rcvQueue[rcvStart];
						rcvStart = (rcvStart + 1) % IO_SIZE;
						send.type = REQUEST_OK;
						temp = Reply( reqTid, (char *)&send, sizeof(ComReqStruct) );
					}
				}
				break;
		}

	} // FOREVER
}

//-----------------------------------------------------------------------------------------------
//	Server that handle putc for UART 2
//-----------------------------------------------------------------------------------------------
void uart2PutServer( ){
	if ( RegisterAs( "u2x" ) == -1 ) {
		bwprintf( COM2, "uart2PutServer: register failed\n\r" );
		Exit();
	}

	// Create notifier
	unsigned int notiTid;
	void (*noti)();
	noti = notifier;
	notiTid = Create( 0, noti );

	// Initializing
	int reqTid;
	char xmitQueue[IO_SIZE];
	int xmitStart = 0;				// start index of the ring buffer
	int xmitEnd = 0;			    // end index of the ring buffer
	int readyFlag = 0;              // indicate if the notifier is ready, 1=ready, 0=not ready

	// Let notifier know that its done
	ComReqStruct send, reply;
	send.type = UART2XMIT;
	Send( notiTid, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	// Start server
	FOREVER {
		int temp = Receive( &reqTid, (char *)&reply, sizeof(ComReqStruct) );
		switch( reply.type ) {
			case NOTI_REQ:
				{
					if (xmitStart == xmitEnd)   // xmitQ is empty 
					{
						// mark notifier ready
						readyFlag = 1;
					} else {
						// reply to the notifier with a character 
						char character = xmitQueue[xmitStart];
						xmitStart = (xmitStart + 1) % IO_SIZE;
						send.data1 = (int) character;
						Reply(notiTid, (char *)&send, sizeof(ComReqStruct));
						readyFlag = 0;
					}
				}
				break;
			case UART2XMIT_REQ:
				{
					// reply to client
					send.type = REQUEST_OK;
					send.data1 = 0;
					Reply( reqTid, (char *)&send, sizeof(ComReqStruct) );

					if (readyFlag == 0)   //notifier not ready, insert the byte into xmitQ
					{
						xmitQueue[xmitEnd] = (char) reply.data1;
						xmitEnd = (xmitEnd + 1) % IO_SIZE;
					} else {

						// reply the notifier with the byte to write
						send.data1 = reply.data1;
						send.type = REQUEST_OK;
						temp = Reply( notiTid, (char *)&send, sizeof(ComReqStruct) );
						readyFlag = 0;
					}
				}
				break;
		}

	} // FOREVER
}

/*
 *
 *	bwprintf converted to use Putc (slowed down to allow output to catch up to input in buffer)
 *
 */

void putw( int server, int channel, int n, char fc, char *bf ) {
	char ch;
	char *p = bf;

	while( *p++ && n > 0 ) n--;
	while( n-- > 0 ) Putc( server, channel, fc );
	while( ( ch = *bf++ ) ) Putc( server, channel, ch );
}

int a2d( char ch ) {
	if( ch >= '0' && ch <= '9' ) return ch - '0';
	if( ch >= 'a' && ch <= 'f' ) return ch - 'a' + 10;
	if( ch >= 'A' && ch <= 'F' ) return ch - 'A' + 10;
	return -1;
}

char a2i( char ch, char **src, int base, int *nump ) {
	int num, digit;
	char *p;

	p = *src; num = 0;
	while( ( digit = a2d( ch ) ) >= 0 ) {
		if ( digit > base ) break;
		num = num*base + digit;
		ch = *p++;
	}
	*src = p; *nump = num;
	return ch;
}

void ui2a( unsigned int num, unsigned int base, char *bf ) {
	int n = 0;
	int dgt;
	unsigned int d = 1;
	
	while( (num / d) >= base ) d *= base;
	while( d != 0 ) {
		dgt = num / d;
		num %= d;
		d /= base;
		if( n || dgt > 0 || d == 0 ) {
			*bf++ = dgt + ( dgt < 10 ? '0' : 'a' - 10 );
			++n;
		}
	}
	*bf = 0;
}

void i2a( int num, char *bf ) {
	if( num < 0 ) {
		num = -num;
		*bf++ = '-';
	}
	ui2a( num, 10, bf );
}

void format ( int server, int channel, char *fmt, va_list va ) {
	char bf[12];
	char ch, lz;
	int w;

	
	while ( ( ch = *(fmt++) ) ) {
		int i;
		for ( i=0; i<500; i++);
		if ( ch != '%' )
			Putc( server, channel, ch );
		else {
			lz = 0; w = 0;
			ch = *(fmt++);
			switch ( ch ) {
			case '0':
				lz = 1; ch = *(fmt++);
				break;
			case '1':
			case '2':
			case '3':
			case '4':
			case '5':
			case '6':
			case '7':
			case '8':
			case '9':
				ch = a2i( ch, &fmt, 10, &w );
				break;
			}
			switch( ch ) {
			case 0: return;
			case 'c':
				Putc( server, channel, va_arg( va, char ) );
				break;
			case 's':
				putw( server, channel, w, 0, va_arg( va, char* ) );
				break;
			case 'u':
				ui2a( va_arg( va, unsigned int ), 10, bf );
				bwputw( channel, w, lz, bf );
				break;
			case 'd':
				i2a( va_arg( va, int ), bf );
				putw( server, channel, w, lz, bf );
				break;
			case 'x':
				ui2a( va_arg( va, unsigned int ), 16, bf );
				putw( server, channel, w, lz, bf );
				break;
			case '%':
				Putc( server, channel, ch );
				break;
			}
		}
	}
}

void myprintf( int server, int channel, char *fmt, ... ) {
        va_list va;

        va_start(va,fmt);
        format( server, channel, fmt, va );
        va_end(va);
}
