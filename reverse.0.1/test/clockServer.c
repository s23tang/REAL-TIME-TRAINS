#include "wtA4.h"
#include "clockServer.h"
#include "nameServer.h"
#include "syscalls.h"
#include "notifier.h"

//-----------------------------------------------------------------------------------------------
//	Calling task will get the current time in ticks from the clock server
//-----------------------------------------------------------------------------------------------
int Time( int clkServer ) {
	ComReqStruct request, reply;
	request.type = TIME_REQ;
	Send( clkServer, (char *)&request, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
	return reply.data1;
}

//-----------------------------------------------------------------------------------------------
//	Calling task will delay the amount of time specified in ticks
//-----------------------------------------------------------------------------------------------
int Delay( unsigned int clkServer, int ticks ) {
	if ( ticks < 0 ) return -1;

	ComReqStruct request, reply;
	request.type = DELAY_REQ;
	request.data1 = ticks;

	Send( clkServer, (char *)&request, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	return 0;
}

//-----------------------------------------------------------------------------------------------
//	Calling task will delay until the specified time
//-----------------------------------------------------------------------------------------------
int DelayUntil( unsigned int clkServer, int ticks ) {
	int currTime = Time( clkServer );
	int ret = Delay( clkServer, ticks - currTime );

	return ret;	// could return -1
}

//-----------------------------------------------------------------------------------------------
//	Clock server
//-----------------------------------------------------------------------------------------------
void clockServer( ) {
	if ( RegisterAs( "clock" ) == -1 ) {
		bwprintf( COM2, "clockServer: register failed\n\r" );
		Exit();
	}

	// Create notifier
	unsigned int notiTid;
	void (*noti)();

	noti = notifier;
	notiTid = Create( 0, noti );

	// Initializing
	int reqTid;
	unsigned int currIndex;
	int currTime = 0;
	DelayedTask delayedTasks[MAX_TASKS];
	DelayedTask *delayedList = 0;

	// Let notifier know that its done
	ComReqStruct send, reply;
	send.type = CLOCK;
	Send( notiTid, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	int waitingCourier = -1;

	// Start server
	FOREVER {
		int temp = Receive( &reqTid, (char *)&reply, sizeof(ComReqStruct) );
		switch( reply.type ) {
			case COURIER:
				waitingCourier = reqTid;
				break;
			case NOTI_REQ:
				send.type = REQUEST_OK;
				Reply( notiTid, (char *)&send, sizeof(ComReqStruct) );
				currTime += 1;
				if ( waitingCourier != -1 && (currTime % 10 == 0) ) {
					send.type = TIME_UPDATE;
					Reply( waitingCourier, (char *)&send, sizeof(ComReqStruct) );
					waitingCourier = -1;
				}
				break;

			case TIME_REQ:
				{
					send.type = REQUEST_OK;
					send.data1 = currTime;
					// bwprintf(COM2, "3 reply to %d\n\r", reqTid);
					temp = Reply( reqTid, (char *)&send, sizeof(ComReqStruct) );
				}
				break;

			case DELAY_REQ:
				{
					unsigned int waitTill = reply.data1 + currTime;
					DelayedTask **ptr;
					currIndex = reqTid - 1;
					delayedTasks[currIndex].ticks = waitTill;
					delayedTasks[currIndex].tid = reqTid;

					for ( ptr = &delayedList; (*ptr) != 0; ptr = (DelayedTask **)&((*ptr)->next )) {
						if ( (*ptr)->ticks >= waitTill ) {
							delayedTasks[currIndex].next = (struct DelayedTask *)*ptr;
							(*ptr) = &(delayedTasks[currIndex]);
							break;
						} // if
					} // for
					if ( (*ptr) == 0 ) {
						delayedTasks[currIndex].next = 0;
						(*ptr) = &(delayedTasks[currIndex]);
					} // if
				} // DELAY_REQ
				break;
		}
		// Reply to timed-out tasks
		DelayedTask *ptr;
		for ( ptr = delayedList; ptr != 0; ptr = (DelayedTask *)ptr->next ) {
			if ( ptr->ticks == currTime ) {
				send.type = REQUEST_OK;
				Reply( ptr->tid, (char *)&send, sizeof(ComReqStruct) );
				delayedList = (DelayedTask *)ptr->next;
			} else {
				break;	// Minimum wait time not reached yet
			}
		} // for
	} // FOREVER
} // clock
