#include "io.h"
#include "wtA4.h"
#include "nameServer.h"
#include "syscalls.h"
#include "notifier.h"

//-----------------------------------------------------------------------------------------------
//	Wait until able to read a character from the given UART
//-----------------------------------------------------------------------------------------------
int getc( int channel ) {
	int *flags, *data;
	unsigned char c;

	switch( channel ) {
	case COM1:
		flags = (int *)( UART1_BASE + UART_FLAG_OFFSET );
		data = (int *)( UART1_BASE + UART_DATA_OFFSET );
		break;
	case COM2:
		flags = (int *)( UART2_BASE + UART_FLAG_OFFSET );
		data = (int *)( UART2_BASE + UART_DATA_OFFSET );
		break;
	default:
		return -1;
		break;
	}
	while ( ( *flags & RXFE_MASK ) );		// modified to spin on empty
	c = *data;
	return c;
} // getc

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
//	Server that handle putc for UART 2
//-----------------------------------------------------------------------------------------------
void uart2GetServer( ){
	// if ( RegisterAs( "uart2Get\000" ) == -1 ) {
	// 	bwprintf( COM2, "uart2GetServer: register failed\n\r" );
	// 	Exit();
	// }

	// Create notifier
	unsigned int notiTid;
	void (*noti)();
	noti = notifier;
	notiTid = Create( 0, noti );

	// Initializing
	int reqTid;
	char rcvQueue[300];
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
					bwprintf(COM2, "got %c\n\r", (char )reply.data1);
					// reply to server
					send.type = REQUEST_OK;
					Reply( notiTid, (char *)&send, sizeof(ComReqStruct) );

					if (getStart == getEnd)   // nobody is waiting for the character 
					{
						// put the character into the rcvQueue
						rcvQueue[rcvEnd] = (char) reply.data1;
						rcvEnd = (rcvEnd + 1) % 300;
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
						rcvStart = (rcvStart + 1) % 300;
						send.type = REQUEST_OK;
						temp = Reply( reqTid, (char *)&send, sizeof(ComReqStruct) );
					}
				}
				break;
		}

	} // FOREVER
}

