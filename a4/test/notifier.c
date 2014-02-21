#include "notifier.h"
#include "syscalls.h"
#include "wtA4.h"

//-----------------------------------------------------------------------------------------------
// Notifier for a specific event. Will be created by server
//-----------------------------------------------------------------------------------------------
void notifier( ){
	int server;
	ComReqStruct send, reply;
	
	Receive( &server, (char *)&reply, sizeof(ComReqStruct));
	switch ( reply.type ) {
		case UART1XMIT:
			;
		case UART1GET:
			{
				bwsetfifo( COM1, OFF );

				int *vicEnable2 = (int *)(VIC2 + 0x10);
				*(vicEnable2) = *(vicEnable2) | 0x00100000;
			}
			break;
		case UART2XMIT:
			;
		case UART2GET:
			{
				bwsetfifo( COM2, OFF );

				int *vicEnable2 = (int *)(VIC2 + 0x10);
				*(vicEnable2) = *(vicEnable2) | 0x00400000;
			}
			break;
		case CLOCK:
			{
				unsigned int *timeLoad = (unsigned int *)TIME_LOAD;
				*timeLoad = ONE_TICK;
				unsigned int *control = (unsigned int *)TIME_CTRL;
				*control = *control | 0x40;
				*control = *control | FREQ_BIT;
				*control = *control | ENABLE_BIT;

				int *vicEnable2 = (int *)(VIC2 + 0x10);
				*(vicEnable2) = *(vicEnable2) | 0x00080000;
			}
			break;
	}
	send.type = REQUEST_OK;
	// tell the server: successfully created
	Reply(server, (char *)&send, sizeof(ComReqStruct));
	FOREVER {
		send.type = NOTI_REQ;
		send.data1 = AwaitEvent(reply.type);
		Send( server, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));
	}
}
