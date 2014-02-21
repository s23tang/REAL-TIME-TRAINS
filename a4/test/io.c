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
int Getc( int channel ) {
	int serverTid;
	ComReqStruct send, reply;

	if ( channel == COM1 ) serverTid = WhoIs( "u1g" );
	else serverTid = WhoIs( "u2g" );

	send.type = UART2GET_REQ;
	Send( serverTid, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	return reply.data1;
} // Getc

//-----------------------------------------------------------------------------------------------
//	Calling task blocks and gets the character from the UART(1,2) Get Server
//-----------------------------------------------------------------------------------------------
int Putc( int channel, char ch ) {
	int serverTid;
	ComReqStruct send, reply;

	if ( channel == COM1 ) serverTid = WhoIs( "u1x" );
	else serverTid = WhoIs( "u2x" );

	send.type = UART2XMIT_REQ;
	send.data1 = ch;
	Send( serverTid, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

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
	char xmitQueue[300];
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
						xmitStart = (xmitStart + 1) % 300;
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
						xmitEnd = (xmitEnd + 1) % 300;
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

