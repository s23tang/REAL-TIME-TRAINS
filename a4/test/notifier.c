#include "notifier.h"
#include "syscalls.h"
#include "wtA4.h"

//-----------------------------------------------------------------------------------------------
// Notifier for a specific event. Will be created by server
//-----------------------------------------------------------------------------------------------
void notifier( ){
	int flag = 0;
	int server;
	int type;
	ComReqStruct send, reply;

	Receive( &server, (char *)&reply, sizeof(ComReqStruct));

	type = reply.type;
	switch ( type ) {
		case UART1XMIT:
			break;
		case UART1GET:
			break;
		case UART2XMIT:
			{
				flag = 3;
				int *vicEnable2 = (int *)(VIC2 + 0x10);
				*(vicEnable2) = *(vicEnable2) | 0x00400000;
			}
			break;
		case UART2GET:
			{
				flag = 1;

				int *ctrl = (int *)UART2CTRL;
				*ctrl = *ctrl | 0x00000010;

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
		send.data1 = AwaitEvent(type);
		Send( server, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct));
		
		if ( flag == 3 ) {
				int *data = (int *)(UART2_BASE + UART_DATA_OFFSET);
				*data = (char)reply.data1;
			
		} // if
	} // FOREVER
} // notifier
