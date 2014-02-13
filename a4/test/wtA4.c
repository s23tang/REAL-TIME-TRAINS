/*
 * wtA4.c
 */
#include "wtA4.h"
#include "syscalls.h"
#include "nameServer.h"
#include "clockServer.h"
#include "notifier.h"
#include "io.h"

/*
 * User tasks are below
 */

void t1( ) {
	int parentTid = MyParentTid();
	int myTid = MyTid();
	DelayInfo delayInfo;
	int created = 0;
	Send(parentTid, (char *)&created, sizeof(int), (char*) &delayInfo, sizeof(DelayInfo));
	int clkServer = WhoIs( "clock\000" );
	int iteration = delayInfo.iteration;
	int interval = delayInfo.interval;
	int i;
	for (i = 0; i < iteration; i++)
	{
		Delay(clkServer, interval);
		bwprintf(COM2, "Tid: %d, Delay Interval: %d, completed %d delays\n\r", myTid, interval, i+1);
	}
	Exit();
}

void t2(){
	int clkServer = WhoIs( "clock\000" );

	FOREVER{
		int time = Time(clkServer);
		if (time > 250)
		{

			Exit();
		}
	}
}

//-----------------------------------------------------------------------------------------------
//	First user task that will be placed by the kernel into the priority queue
//-----------------------------------------------------------------------------------------------
void firstUserTask(){
	void (*func)();
	func = nameServer;
	unsigned int tid;
	tid = Create( 0, func );
	bwprintf(COM2, "First: created Name Server\n\r");

	func = clockServer;
	tid = Create( 1, func );



	func = t1;
	tid = Create( 3, func );
	// func = t1;
	tid = Create( 4, func );
	// func = t1;
	tid = Create( 5, func );
	// func = t1;
	tid = Create( 6, func );

	func = t2;
	tid = Create(8, func);
	int childTid;
	int created;
	DelayInfo delayInfo;


	delayInfo.interval = 10;
	delayInfo.iteration = 20;
	Receive(&childTid, (char*)&created, sizeof(int));
	Reply(childTid, (char*)&delayInfo, sizeof(delayInfo));

	delayInfo.interval = 23;
	delayInfo.iteration = 9;
	Receive(&childTid, (char*)&created, sizeof(int));
	Reply(childTid, (char*)&delayInfo, sizeof(delayInfo));

	delayInfo.interval = 33;
	delayInfo.iteration = 6;
	Receive(&childTid, (char*)&created, sizeof(int));
	Reply(childTid, (char*)&delayInfo, sizeof(delayInfo));

	delayInfo.interval = 71;
	delayInfo.iteration = 3;
	Receive(&childTid, (char*)&created, sizeof(int));
	Reply(childTid, (char*)&delayInfo, sizeof(delayInfo));


	bwprintf(COM2, "First: exiting\n\r");
	Exit();
} // firstUserTask

/*
 *	The function getNextRequest will allow for context
 *	switching between user and kernel. And initialize
 *	will be setup for bootstrapping kernel.
 */

//-----------------------------------------------------------------------------------------------
//	Before kerent: this portion is for setting up and switching from kernel to the user code
//	
//	After kerent: this portion will be accessed after the user raises a software interrupt, and 
//	will switch to kernel execution
//-----------------------------------------------------------------------------------------------
void getNextRequest(TD *active, Request *req){
	// Setup the jump table to branch to kerent on swi
	void (*labelAddr)();
	labelAddr = &&kerent;
	*(int *)(0x28) = (int)labelAddr;
	labelAddr = &&HWint;
	*(int *)(0x38) = (int)labelAddr;

	// 1. push the kernel registers onto its stack
	asm("stmfd sp!, {r0, r4-r9, sl, fp}");
	asm("stmfd sp!, {r1}"); //req
	// 2. change to system state
	asm("mrs r1, CPSR\n\t"
	    "bic r1, r1, #0x1F\n\t"
		"orr r1, r1, #0x1F\n\t"
		"msr CPSR, r1");
	// 3. get the sp, spsr and return value of the active task from it TD
	asm("ldr r1, [r0, #0]");
	// 4. pop the registers of the active task 
	asm("mov sp, r1\n\t"
		"ldmfd sp!, {r4-r9, sl, fp, ip, lr}\n\t"
		"mov r2, sp\n\t"
		"add sp, sp, #16");
	// 5. put the retVal in r0
	// 6. return to SVC state
	asm("mrs r1, CPSR\n\t"
		"bic r1, r1, #0x1F\n\t"
		"orr r1, r1, #0x13\n\t"
		"msr CPSR, r1");
	// 7. install the spsr to the active task
	asm("ldr r1, [r0, #4]\n\t"
		"msr SPSR, r1");
	// 8. install the pc of the active task
	asm("ldr lr, [r2, #12]\n\t"
		"ldmfd r2, {r1-r3}\n\t"
		"ldr r0, [r0, #8]\n\t"
		"movs pc, lr");
HWint:
	asm("stmfd sp!, {r0, r1, lr}\n\t"
		"mov r1, sp\n\t"
		"add sp, sp, #12");

	// Switch to kernel
	asm("mrs r0, CPSR\n\t"
		"bic r0, r0, #0x1F\n\t"
		"orr r0, r0, #0xd3\n\t"
		"msr CPSR, r0");
	
	asm("ldmfd r1, {r0, r1, lr}\n\t"
		"sub lr, lr, #4\n\t"
		"stmfd sp!, {r0-r4}\n\t"
		"mov r1, #0\n\t"
		"stmfd sp!, {r1}");
	asm("b HWres");

kerent:
	// 1. acquire the arguments of the request
	// Note: r4 at this point is just garbage.
	asm("stmfd sp!, {r0-r4}\n\t"
		"ldr r0, [lr, #-4];\n\t"
		"bic r1, r0, #0xFF000000\n\t"
		"stmfd sp!, {r1}");
	// Used to determine if there are 5 arguments. Otherwise arg4 will be garbage.
	 asm("HWres:\n\t"
	 	 "ldr r1, [fp, #4]\n\t"
	 	 "str r1, [sp, #20]");
	// 1.5 get the start of the TDs out from stack
	// 1.6 get SPSR of the active task into the SP_SVC
	asm("mrs r1, SPSR\n\t"
		"stmfd sp!, {r1}");
	// 2. acquire the lr, which is the pc of the active task
	asm("mov r2, sp\n\t"
		"stmfd r2!, {lr}");
	// 3. change to system state
	asm("mrs r1, CPSR\n\t"
		"bic r1, r1, #0x1F\n\t"
		"orr r1, r1, #0x1F\n\t"
		"msr CPSR, r1");
	// 4. overwrite lr with the value from step 2
	asm("ldmfd r2!, {r3}\n\t"
		"stmfd sp!, {r3}");
	// 5. push the registers of the active task onto its stack
	asm("add r2, r2, #8\n\t"
		"ldmfd r2, {r0-r3}\n\t"
		"stmfd sp!, {r1-r3}\n\t"
		"stmfd sp!, {r4-r9, sl, fp, ip, lr}\n\t"
		"mov ip, sp");
	// 7. return to SVC state;
	asm("mrs r0, CPSR\n\t"
		"bic r0, r0, #0x1F\n\t"
		"orr r0, r0, #0x13\n\t"
		"msr CPSR, r0");
	// 7.5 get SPSR of the active task from SP_SVC
	asm("ldmfd sp!, {r1}");
	// 10. fill in the request of the kernel from its stack
	asm("ldmfd sp!, {r0,r2-r7}");
	asm("str r2, [r7, #0]\n\t"
		"str r3, [r7, #4]\n\t"
		"str r4, [r7, #8]\n\t"
		"str r5, [r7, #12]\n\t"
		"str r6, [r7, #16]\n\t"
		"str r0, [r7, #20]");
	// 9. pop the registers from its stack
	asm("ldmfd sp!, {r0, r4-r9, sl, fp}");
	// 6. acquire the sp of the active task;
	// 8. acquire the spsr of the active task 
	asm("str ip, [r0, #0]\n\t"
		"str r1, [r0, #4]\n\t"
		"str r2, [r0, #8]");
} // getNextRequest

//-----------------------------------------------------------------------------------------------
//	Same functionality as memcpy().
//-----------------------------------------------------------------------------------------------
void copyMsg( char *destBuf, char *srcBuf, int len){
        int i;
        for (i = 0; i < len; i++)
        {
                destBuf[i] = srcBuf[i];
        }
        //destBuf[i] = 0;   //Indicate the end of message
} // copyMsg

//-----------------------------------------------------------------------------------------------
//	Gets the stack size to use for each user task
//-----------------------------------------------------------------------------------------------
unsigned int getStackSize( ) {
	// make sure the size is an integer
	unsigned int size = (MEM_END - MEM_START) / MAX_TASKS;
	// make sure the size mod 4 is zero
	unsigned int tmp = size % 4;
	size -= tmp;
	return size;

} // getStackSize

//-----------------------------------------------------------------------------------------------
//	This will boostrap the kernel by creating a first task which looks as if it has just left 
//	kernel execution; i.e. the first user stack will be filled with placeholder values, and the 
//	lr will be the program counter for the code of the first task
//-----------------------------------------------------------------------------------------------
void initialize( TD *tds, Queue *priorityQueues, Request *req, Notifier *notifiers ) {
	unsigned int i;

	// Initialize the queue to be all empty
	for ( i = 0; i <MAX_PRIORITIES; i++ ) {
		priorityQueues[i].headOfQueue = 0;
	}

	// Set stack pointer, PSR, and return value
	tds[0].sp = (int *)(MEM_END - getStackSize());
										// First user stack starts below kernel stack
	tds[0].spsr = PSR_USR;				// Initialize to user mode
	tds[0].retVal = 0;					// Initialize return value to 0
	tds[0].state = READY;				// Task is ready
	tds[0].tid = 1;						// First user task has ID 1
	tds[0].parentTid = 0;				// Parent is 0 (kernel)
	tds[0].nextTask = 0;				// No next task in priority queue
	tds[0].priority = 2;
	tds[0].nextSender = 0;
	// Set lr to the location of the firstUserTask
	void (*syscall)();
	syscall = firstUserTask;
	*(tds[0].sp) = (int)syscall+LOAD_LOC;

	// Fill user stack with placeholder values, and put the pc of firstUserTask into lr
	for ( i = 3; i > 0; i-- ) {
		tds[0].sp--;
		*(tds[0].sp) = i;
	} // for
	for ( i = 14; i > 3; i-- ) {
		if ( i == 13 ) continue;
		tds[0].sp--;
		*(tds[0].sp) = i;
	} // for
										// Setup the first user task to be
										// both head and tail of queue,
										// since only one in the queue
	priorityQueues[2].headOfQueue = &(tds[0]);
	priorityQueues[2].tailOfQueue = &(tds[0]);

	req->freeIndex = 1;					// Next index to place TD in tds array
	req->tds = tds;						// Reference the tds array
	req->priorityQueues = priorityQueues;
										// Reference the priority queues array

	// Fill Notifier array
	notifiers[CLOCK].task = 0;
	notifiers[CLOCK].data = 0;
	notifiers[CLOCK].eventWaiting = 0;

	asm("mrs r0, CPSR\n\t"
		"bic r0, r0, #0x1F\n\t"
		"orr r0, r0, #0x12\n\t"
		"msr CPSR, r0");

	asm("ldr r0, =0x44FA4\n\t"
		"mov sp,r0");

	asm("mrs r0, CPSR\n\r"
		"bic r0, r0, #0x1F\n\t"
		"orr r0, r0, #0x13\n\t"
		"msr CPSR, r0");
} // initialize

//-----------------------------------------------------------------------------------------------
//	Get the task at the highest priority queue's front and return it
//-----------------------------------------------------------------------------------------------
TD *schedule( Queue *priorityQueues, Request *req ) {
	unsigned int i;
	for ( i = 0; i < MAX_PRIORITIES; i++ ) {
		if ( priorityQueues[i].headOfQueue != 0 ) {
			TD *scheduled = priorityQueues[i].headOfQueue;
			req->taskPriority = i;
			// bwprintf(COM2, "tid: %d, sp: %x\n\r", scheduled->tid, scheduled->sp);
			return scheduled;
		} // if
	} // for

	return 0;							// Nothing in priority queues to schedule
} // schedule

//-----------------------------------------------------------------------------------------------
//	Place the last active task at the back of the priority queue that it is in
//-----------------------------------------------------------------------------------------------
void rescheduleActive( Queue *priorityQueues, Request *req ) {
	unsigned int whichQueue	= req->taskPriority;
	Queue *currQueue = &(priorityQueues[whichQueue]);

	TD *lastActive = currQueue->headOfQueue;
	// Only move to the back if queue has more than 1 task
	if ( currQueue->headOfQueue != currQueue->tailOfQueue ) {
		currQueue->headOfQueue = (TD *)lastActive->nextTask;
		currQueue->tailOfQueue->nextTask = (struct TD *)lastActive;
		currQueue->tailOfQueue = lastActive;
		lastActive->nextTask = 0;
	} // if
} // rescheduleActive

//-----------------------------------------------------------------------------------------------
//	Place a block task at the back of the priority queue that it is in
//-----------------------------------------------------------------------------------------------
void rescheduleBlock( Queue *priorityQueues, int priority , TD *blockedTD) {
	unsigned int whichQueue	= priority;
	Queue *targetQ = &(priorityQueues[whichQueue]);

	if(targetQ->headOfQueue == 0){			// empty priority queue
		targetQ->headOfQueue = blockedTD;
		targetQ->tailOfQueue = blockedTD;
	}
	else {
		targetQ->tailOfQueue->nextTask = (struct TD *)blockedTD;
		targetQ->tailOfQueue = blockedTD;
	}
} // rescheduleBlock

//-----------------------------------------------------------------------------------------------
//	Remove a task descriptor from the priority queues in order to block it
//-----------------------------------------------------------------------------------------------
void blockActive(int priority, Queue *priorityQueues){
	Queue *currQueue = &(priorityQueues[priority]);
	TD *lastActive = currQueue->headOfQueue;
	if (lastActive->nextTask == 0)
	{
		currQueue->tailOfQueue = 0;
	}
	currQueue->headOfQueue = (TD *)lastActive->nextTask;
	lastActive->nextTask = 0;
} // blockActive

//-----------------------------------------------------------------------------------------------
//	Remove the last active task from its priority queue so it will no longer be scheduled
//-----------------------------------------------------------------------------------------------
void closeActive( Queue *priorityQueues, Request *req ) {
	unsigned int whichQueue	= req->taskPriority;
	Queue *currQueue = &(priorityQueues[whichQueue]);
	TD *lastActive = currQueue->headOfQueue;

	if ( currQueue->headOfQueue != currQueue->tailOfQueue ) {
		currQueue->headOfQueue = (TD *)lastActive->nextTask;
	} else {
		currQueue->headOfQueue = 0;
		currQueue->tailOfQueue = 0;
	} // if

	lastActive->state = ZOMBIE;			// Update the closed task to be in zombie state
} // closeActive

//-----------------------------------------------------------------------------------------------
//	Handle each kernel primitive (Create, MyTid, MyParentTid, Pass, Exit), last active task will
//	be the task that called the kernel primitive
//-----------------------------------------------------------------------------------------------
void handle( TD *tds, Queue *priorityQueues, Request *req, Notifier *notifiers ) {
	switch( req->type ) {
		case HWINTERRUPT:
			{
				int *clr = (int *)TIME_CLR;
				*clr = 1;
				rescheduleActive( priorityQueues, req );

				// Currently not checking the IRQ state register for which interrupt type occured
				if (notifiers[CLOCK].task == 0)  // No body is waiting
				{
					notifiers[CLOCK].data = 0;
					notifiers[CLOCK].eventWaiting = 1;
				} 
				else {    // Notifier is waiting, reschedule the task and put in the retVal
					TD *notifier = (TD *)notifiers[CLOCK].task;
					notifier->retVal = 0;
					rescheduleBlock(priorityQueues, notifier->priority, notifier);
				}
			}
			break;
		case CREATE:
			{	/*	Create */
				unsigned int freeIndex 	= req->freeIndex;			// Where to place new TD
				unsigned int newTid		= freeIndex + 1;			// Next tid free to use
				unsigned int whichQueue	= req->taskPriority;		// Priority of last active task
				unsigned int parentTid 	= priorityQueues[whichQueue].headOfQueue->tid;
																	// Tid of last active task
				unsigned int priority 	= req->arg0;				// Priority of new task

				TD *newTask	= &(tds[freeIndex]);					// The TD that will hold this
				Queue *newQueue = &(priorityQueues[priority]);		// The queue the TD will be in

				priorityQueues[whichQueue].headOfQueue->retVal = newTid;
																	// Update the return value of
																	// calling task
				void (*syscall)();
				syscall = (void *)req->arg1;						// The code of the created task

				// Populate the new TD
				newTask->sp = (int *)(MEM_END - newTid * getStackSize());
																	// Position of new stack in memory
				newTask->spsr = PSR_USR;							// Initialize to user mode
				newTask->retVal = 0;								// Initialize return value to 0
				newTask->state = READY;								// Task is ready
				newTask->tid = newTid;								// First user task has ID 1
				newTask->parentTid = parentTid;						// Parent is 0 (kernel)
				newTask->nextTask = 0;								// No next task in priority queue
				newTask->priority = priority;
				newTask->nextSender = 0;							// This task has no next sender

				// Set lr to the location of the firstUserTask
				*(newTask->sp) = (int)syscall+LOAD_LOC;
				// Fill user stack with placeholder values, and put the pc of firstUserTask into lr
				unsigned int i;
				for ( i = 3; i > 0; i-- ) {
					newTask->sp--;
					*(newTask->sp) = i;
				} // for
				for ( i = 14; i > 3; i-- ) {
					if ( i == 13 ) continue;
					newTask->sp--;
					*(newTask->sp) = i;
				} // for

				if ( newQueue->headOfQueue == 0 ) {
					newQueue->headOfQueue = newTask;
					newQueue->tailOfQueue = newTask;
				} else {
					newQueue->tailOfQueue->nextTask = (struct TD *)newTask;
					newQueue->tailOfQueue = newTask;
				} // if

				req->freeIndex++;									// Update the index for next TD

				rescheduleActive( priorityQueues, req );			// Place last active task at back of 
																	// queue behind the created task
			}
			break;
		case MYTID:
			{	/*	MyTid */
				unsigned int whichQueue	= req->taskPriority;
				priorityQueues[whichQueue].headOfQueue->retVal = priorityQueues[whichQueue].headOfQueue->tid;
				rescheduleActive( priorityQueues, req );			// Place last active task at back of 
																	// queue behind the created task
			}
			break;
		case MYPARENTTID:
			{	/*	MyParentTid */
				unsigned int whichQueue	= req->taskPriority;
				priorityQueues[whichQueue].headOfQueue->retVal = priorityQueues[whichQueue].headOfQueue->parentTid;
				rescheduleActive( priorityQueues, req );			// Place last active task at back of 
																	// queue behind the created task
			}
			break;
		case PASS:
			{	/*	Pass */
				rescheduleActive( priorityQueues, req );			// Place last active task at back of 
																	// queue behind the created task
			}
			break;
		case EXIT:
			{	/*	Exit */
				closeActive( priorityQueues, req );					// Remove last active task from the queue
			}
			break;
		case SEND:
			{   /*  Send */
				// Fill the request arguments into the sender's TD and senderInfo
				unsigned int whichQueue	= req->taskPriority;		// Priority of last active task
				unsigned int senderTid 	= priorityQueues[whichQueue].headOfQueue->tid;
				TD *sender        = &(tds[senderTid - 1]);
				int receiverTid   = req->arg0;
				sender->msgToSend = (char *)req->arg1;
				sender->msgLen    = req->arg2;
				sender->rcvAddr   = (char *)req->arg3;
				sender->rcvLen    = req->arg4;
				TD *receiver      = &(tds[receiverTid - 1]);
				
				// Checking if the target Tid is valid.
				if (receiverTid < 1 || receiverTid > MAX_TASKS)
				{
					sender->retVal = -1;
					break;
				}

				blockActive(whichQueue, priorityQueues);     //block the current send task 
				// Check if Receive() is called before Send()
				if (receiver->state == SND_BLOCKED)
				{   /* Receive() before Send(). Copy the msg to receiver directly */
					sender->state = RPL_BLOCKED;
					receiver->state = READY;

					rescheduleBlock(priorityQueues, receiver->priority, receiver);
					unsigned int copyLen = (sender->msgLen <= receiver->rcvLen) ? sender->msgLen : receiver->rcvLen; // send the bottle neck len
					copyMsg(receiver->rcvAddr, sender->msgToSend, copyLen);
					sender->retVal = copyLen;
					receiver->retVal = copyLen;
					*(receiver->senderTid) = senderTid;        // Indicate who the sender is
				}
				else { 
					sender->state = RCV_BLOCKED;
					sender->nextSender = 0;   // Adding the sender to the back of sendQ
					if (receiver->nextSender != 0)
					{
						TD *lastSender         = (TD *)receiver->lastSender;
						lastSender->nextSender = (struct TD *)sender;
						receiver->lastSender   = (struct TD *)sender;
					}else {
						receiver->nextSender = (struct TD *)sender;
						receiver->lastSender = (struct TD *)sender;
					}
				}
			}
			break;
		case RECEIVE:
		    {
		    	unsigned int whichQueue	 = req->taskPriority;		// Priority of last active task
				unsigned int receiverTid = priorityQueues[whichQueue].headOfQueue->tid;
				TD *receiver        = &(tds[receiverTid - 1]);
				receiver->senderTid = (int *)req->arg0;      // Use to record which task I reply to
				receiver->rcvAddr   = (char *)req->arg1;     // Place to store sent message
				receiver->rcvLen    = req->arg2;             // Maximum size of msg I can store

				// Check if sendQ is empty
				if (receiver->nextSender == 0)
				{
					receiver->state = SND_BLOCKED;
					blockActive(whichQueue, priorityQueues);
				}
				else {   // Not empty, copy the msg
					TD *sender = (TD *)receiver->nextSender;
					unsigned int copyLen = (sender->msgLen <= receiver->rcvLen) ? sender->msgLen : receiver->rcvLen; // send the bottle neck len
					copyMsg(receiver->rcvAddr, sender->msgToSend, copyLen);
					receiver->retVal = copyLen;
					sender->retVal   = copyLen;
					*(receiver->senderTid) = sender->tid;        // Indicate who the sender is
					rescheduleActive(priorityQueues, req);
					// Remove sender from sendQ
					sender->state = RPL_BLOCKED;
					receiver->nextSender = sender->nextSender;
				}
		    }
		    break;
		case REPLY:
		    {
		    	unsigned int whichQueue	= req->taskPriority;
				TD *sender   = &(tds[req->arg0 - 1]);
				char *reply  = (char *) req->arg1;
				int replyLen = req->arg2;

				unsigned int copyLen = (replyLen <= sender->rcvLen) ? replyLen : sender->rcvLen; // send the bottle neck len
				copyMsg(sender->rcvAddr, reply, copyLen);

				priorityQueues[whichQueue].headOfQueue->retVal = copyLen;

				// Put both tasks back to ready queue
				sender->state = READY;

				rescheduleBlock(priorityQueues, sender->priority, sender);
				rescheduleActive(priorityQueues, req);
		    }
		    break;
		case AWAIT_EVENT:
		    {
		    	unsigned int whichQueue	 = req->taskPriority;		// Priority of last active task
				unsigned int notifierTid = priorityQueues[whichQueue].headOfQueue->tid;
				TD *notifier             = &(tds[notifierTid - 1]);
				int eventType = req->arg0;
				// Check if there's already an event in the queue
				if ( notifiers[eventType].eventWaiting > 0 )   // has event waiting
				{
					notifiers[eventType].task = 0;
					notifier->retVal = notifiers[eventType].data;
					rescheduleActive(priorityQueues, req);
					notifiers[eventType].eventWaiting = 0;
				} else{
					//Just block the notifier and wait for event
					notifier->state = AWAIT_BLOCKED;
					notifiers[eventType].task = (struct TD*)notifier;             // put the task descriptor into the event array
					blockActive(whichQueue, priorityQueues);
				}
		    }
		    break;
	} // switch
} // handle

//-----------------------------------------------------------------------------------------------
//	Starting the kernel execution, which will initialize all memory needed and bootstrap the 
//	first user task.
//-----------------------------------------------------------------------------------------------
int main( int argc, char *argv[] ) {

	/* COMMENT TURNS INSTRUCTION/DATA CACHING ON */
	asm( "MRC p15, 0, r0, c1, c0, 0\n\t"
		 "ldr r1, =4100\n\t"
		 "bic r0, r0, r1\n\t"
		 "ORR r0, r0, r1\n\t"
		 "MCR p15, 0, r0, c1, c0, 0" );

	// Declare kernel data structures
	TD tds[MAX_TASKS];						
	Queue priorityQueues[MAX_PRIORITIES];
	Notifier notifiers[NUM_NOTIFIERS];    		//for now, only one notifiers

	TD *active;									// The task that will run
	Request req;								// The requests of the task along with other info
	initialize( tds, priorityQueues, &req, notifiers );	
												// tds is an array of TDs
	
	// Begin kernel execution
	FOREVER {
		active = schedule( priorityQueues, &req );
		// bwprintf(COM2, "next task: %d\n\r", active->tid);
        										// Active will be scheduled to run next
		if ( active == 0 ) break;				// Return cleanly if all tasks exited
		getNextRequest( active, &req );			// req is a pointer to a Request
		handle( tds, priorityQueues, &req, notifiers );	
												// Execute the kernel code of the kernel primitive-h
	} // for



	unsigned int *timeLoad = (unsigned int *)TIME_LOAD;
	*timeLoad = 0;
	// Disable the clock
	unsigned int *control = (unsigned int *)TIME_CTRL;
	*control = *control & (~0x40);
	*control = *control & (~FREQ_BIT);
	*control = *control & (~ENABLE_BIT);

	// Disable the clock 
	int *vicDisable = (int *)(0x800C0014);
	*(vicDisable) = 0x00080000;

	return 0;
} // main
