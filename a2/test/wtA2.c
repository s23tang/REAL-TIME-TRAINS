/*
 * wtA2.c
 */
#include <bwio.h>
#include <ts7200.h>
#include "wtA2.h"

// use 33 tasks max so 0xf5178 bytes each
// start at 0x00044f88 - 0x01fdd000

/*
 *	Kernel primitives (system calls) are implemented
 *	in the following functions, basically each one
 *	contains only a software interrupt to switch to
 *	kernel
 */

//-----------------------------------------------------------------------------------------------
//	Create a task for code with the given priority, returning the task id of the created task
//-----------------------------------------------------------------------------------------------
int Create( int priority, void (*code) ( ) ) {
	asm("swi 1");
	return;	// never reached
} // Create

//-----------------------------------------------------------------------------------------------
//	Get the task id of the calling task
//-----------------------------------------------------------------------------------------------
int MyTid( ) {
	asm("swi 2");
	return;	// never reached
} // MyTid

//-----------------------------------------------------------------------------------------------
//	Get the task id of the parent task
//-----------------------------------------------------------------------------------------------
int MyParentTid( ) {
	asm("swi 3");
	return;	// never reached
} // MyParentTid

//-----------------------------------------------------------------------------------------------
//	Calling task gives up its runtime, and puts itself on the end of the priority queue
//-----------------------------------------------------------------------------------------------
void Pass ( ) {
	asm("swi 4");
} // Pass

//-----------------------------------------------------------------------------------------------
//	Calling task ends its execution and becomes zombie
//-----------------------------------------------------------------------------------------------
void Exit ( ) {
	asm("swi 5");
} // Exit

//-----------------------------------------------------------------------------------------------
//	Calling task sends a message to the destination task
//-----------------------------------------------------------------------------------------------
int Send ( int tid, char *message, int mslen, char *reply, int rplen ) {
	asm("swi 6");

	return 0;
} // Send

//-----------------------------------------------------------------------------------------------
//	Calling task receives a message from another task
//-----------------------------------------------------------------------------------------------
int Receive ( int *tid, char *message, int mslen ) {
	asm("swi 7");

	return 0;
} // Receive

//-----------------------------------------------------------------------------------------------
//	Calling task replys a message from a sender
//-----------------------------------------------------------------------------------------------
int Reply ( int tid, char *reply, int rplen ) {
	asm("swi 8");

	return 0;
} // Reply



/*
 * User tasks for assignment 1 are below
 */

//-----------------------------------------------------------------------------------------------
//	Tasks that will be created by the first user task contains the following
//-----------------------------------------------------------------------------------------------
void theOtherTask(){
	char *msg = "Hello";
	char reply[50];

	bwprintf(COM2, "SENT\n\r");

	Send(3, msg, 6, reply, 50);

	bwprintf(COM2, "%c%c%c%c\n\r", reply[0],reply[1],reply[2],reply[3]);

	bwprintf(COM2, "SENT\n\r");

	Send(4, msg, 6, reply, 50);

	bwprintf(COM2, "%c%c%c%c\n\r", reply[0],reply[1],reply[2],reply[3]);
	Exit();
} // theOtherTask

void theOtherTask2(){
	int sender;
	char msg[50];
	char *reply = "Fuck";
	Receive( &sender, msg, 50);

	bwprintf(COM2, "%c%c%c%c%c\n\r", msg[0],msg[1],msg[2],msg[3],msg[4]);
	Reply(sender, reply, 5);

	Exit();
} // theOtherTask


//-----------------------------------------------------------------------------------------------
//	First user task that will be placed by the kernel into the priority queue
//-----------------------------------------------------------------------------------------------
void firstUserTask(){
	void (*otherTask)();    //1st task for send
	otherTask = theOtherTask;
	void (*otherTask2)();   //2nd task for receive
	otherTask2 = theOtherTask2;
	//Create four instances 
	unsigned int retVal;
	retVal = Create(2, otherTask);	  //instances with lower priority
	bwprintf(COM2, "Created: %d\n\r", retVal);

	retVal = Create(2, otherTask2);	  //instances with lower priority
	bwprintf(COM2, "Created: %d\n\r", retVal);

	retVal = Create(2, otherTask2);	  //instances with lower priority
	bwprintf(COM2, "Created: %d\n\r", retVal);

	//exit
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
	void (*syscall)();
	syscall = &&kerent;
	*(int *)(0x28) = (int)syscall;

	// 1. push the kernel registers onto its stack
	asm("stmfd sp!, {r0, r4-r9, sl, fp}");
	asm("stmfd sp!, {r1}"); //req
	// 2. change to system state
	asm("mrs r1, CPSR\n\t"
	    "bic r1, r1, #0x1F\n\t"
		"orr r1, r1, #0x1F\n\t"
		"msr CPSR, r1");
	// 3. get the sp, spsr and return value of the active task from it TD
	asm("ldr r1, [r0, #0]\n\t"
		"ldr r2, [r0, #4]\n\t"
		"ldr r3, [r0, #8]");
	// 4. pop the registers of the active task 
	asm("ldmfd r1!, {r4-r9, sl, fp, sp, lr}\n\t"
		"mov sp, r1");
	// 5. put the retVal in r0
	asm("mov r0, r3\n\t"
		"mov r3, lr"); // above puts return value but no inverse
	// 6. return to SVC state
	asm("mrs r1, CPSR\n\t"
		"bic r1, r1, #0x1F\n\t"
		"orr r1, r1, #0x13\n\t"
		"msr CPSR, r1");
	// 7. install the spsr to the active task
	asm("msr SPSR, r2");
	// 8. install the pc of the active task
	asm("mov lr, r3\n\t"
		"movs pc, lr");

kerent:
	// 1. acquire the arguments of the request
	// Note: r4 at this point is just garbage.
	asm("stmfd sp!, {r0-r4}\n\t"
		"ldr r0, [lr, #-4];\n\t"
		"bic r1, r0, #0xFF000000\n\t"
		"stmfd sp!, {r1}");
	// Used to determine if there are 5 arguments. Otherwise arg4 will be garbage.
	 asm("ldr r1, [fp, #4]\n\t"
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
	asm("ldmfd r2!, {lr}");
	// 5. push the registers of the active task onto its stack
	asm("Store: "
		"mov ip, sp\n\t"
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
	// asm("mov r0, #1\n\t"
	// 	"mov r1, r6\n\t"
	// 	"bl bwputr(PLT)");
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
		"str r1, [r0, #4]");
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
        destBuf[i] = 0;   //Indicate the end of message
}

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
void initialize( TD *tds, Queue *priorityQueues, Request *req ) {
	unsigned int i;

	// Initialize the queue to be all empty
	for ( i = 0; i <MAX_PRIORITIES; i++ ) {
		priorityQueues[i].headOfQueue = 0;
	}

	// Set stack pointer, PSR, and return value
	tds[0].sp = (int *)MEM_END - getStackSize();
										// First user stack starts below kernel stack
	tds[0].spsr = PSR_USR;				// Initialize to user mode
	tds[0].retVal = 0;					// Initialize return value to 0
	tds[0].state = READY;				// Task is ready
	tds[0].tid = 1;						// First user task has ID 1
	tds[0].parentTid = 0;				// Parent is 0 (kernel)
	tds[0].nextTask = 0;				// No next task in priority queue
	tds[0].priority = 1;

	// Set lr to the location of the firstUserTask
	void (*syscall)();
	syscall = firstUserTask;
	*(tds[0].sp) = (int)syscall+LOAD_LOC;

	// Fill user stack with placeholder values, and put the pc of firstUserTask into lr
	for ( i = 12; i > 3; i-- ) {
		tds[0].sp--;
		*(tds[0].sp) = i;
	} // for
										// Setup the first user task to be
										// both head and tail of queue,
										// since only one in the queue
	priorityQueues[1].headOfQueue = &(tds[0]);
	priorityQueues[1].tailOfQueue = &(tds[0]);

	req->freeIndex = 1;					// Next index to place TD in tds array
	req->tds = tds;						// Reference the tds array
	req->priorityQueues = priorityQueues;
										// Reference the priority queues array
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
		blockedTD->nextTask = 0;
	}
} // rescheduleActive

//-----------------------------------------------------------------------------------------------
//	Remove a task descriptor from the priority queues in order to block it
//-----------------------------------------------------------------------------------------------
void blockActive(int priority, Queue *priorityQueues){
	Queue *currQueue = &(priorityQueues[priority]);
	TD *lastActive = currQueue->headOfQueue;
	currQueue->headOfQueue = (TD *)lastActive->nextTask;
}

//-----------------------------------------------------------------------------------------------
//	Place a block task at the back of the priority queue that it is in
//-----------------------------------------------------------------------------------------------

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
void handle( TD *tds, Queue *priorityQueues, Request *req ) {
	switch( req->type ) {
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
				newTask->sp = (int *)MEM_END - newTid * getStackSize();
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
				for ( i = 12; i > 3; i-- ) {
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
					
				blockActive(whichQueue, priorityQueues);     //block the current send task 

				// Check if Receive() is called before Send()
				if (receiver->state == SND_BLOCKED)
				{   /* Receive() before Send(). Copy the msg to receiver directly */
					sender->state = RPL_BLOCKED;
					receiver->state = READY;
					rescheduleBlock(priorityQueues, receiver->priority, receiver);
					unsigned int copyLen = (sender->msgLen + 1 < receiver->rcvLen) ? sender->msgLen : (receiver->rcvLen - 1); // send the bottle neck len
					copyMsg(receiver->rcvAddr, sender->msgToSend, copyLen);
					sender->retVal = copyLen;
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
					unsigned int copyLen = (sender->msgLen + 1 < receiver->rcvLen) ? sender->msgLen : (receiver->rcvLen - 1); // send the bottle neck len
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

				unsigned int copyLen = (replyLen + 1 < sender->rcvLen) ? replyLen : (sender->rcvLen - 1); // send the bottle neck len
				copyMsg(sender->rcvAddr, reply, copyLen);
				priorityQueues[whichQueue].headOfQueue->retVal = copyLen;

				// Put both tasks back to ready queue
				sender->state = READY;
				rescheduleBlock(priorityQueues, sender->priority, sender);
				rescheduleActive(priorityQueues, req);


		    }
		    break;
	} // switch
} // handle

//-----------------------------------------------------------------------------------------------
//	Starting the kernel execution, which will initialize all memory needed and bootstrap the 
//	first user task.
//
//	For A1, this will mean firstUserTask and the 4 otherTasks that it creates.
//-----------------------------------------------------------------------------------------------
int main( int argc, char *argv[] ) {
	// Declare kernel data structures
	TD tds[MAX_TASKS];						
	Queue priorityQueues[MAX_PRIORITIES];

	TD *active;									// The task that will run
	Request req;								// The requests of the task along with other info
	initialize( tds, priorityQueues, &req );	// tds is an array of TDs
	
	// Begin kernel execution
	FOREVER {
		active = schedule( priorityQueues, &req );
												// Active will be scheduled to run next
		if ( active == 0 ) break;				// Return cleanly if all tasks exited
		getNextRequest( active, &req );			// req is a pointer to a Request
		handle( tds, priorityQueues, &req);	// Execute the kernel code of the kernel primitive
	} // for

	return 0;
} // main
