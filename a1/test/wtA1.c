/*
 * wtA1.c
 */
#include <bwio.h>
#include <ts7200.h>
#include "wtA1.h"

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


/*
 * User tasks for assignment 1 are below
 */

//-----------------------------------------------------------------------------------------------
//	Tasks that will be created by the first user task contains the following
//-----------------------------------------------------------------------------------------------
void theOtherTask(){
	int myTid, myParentTid;
	myTid = MyTid();
	myParentTid = MyParentTid();
	bwprintf(COM2, "MyTid: %d, MyParentTid: %d\n\r", myTid, myParentTid);
	Pass();
	bwprintf(COM2, "MyTid: %d, MyParentTid: %d\n\r", myTid, myParentTid);
	Exit();
} // theOtherTask


//-----------------------------------------------------------------------------------------------
//	First user task that will be placed by the kernel into the priority queue
//-----------------------------------------------------------------------------------------------
void firstUserTask(){
	void (*otherTask)();
	otherTask = theOtherTask;
	//Create four instances 
	unsigned int retVal;
	retVal = Create(2, otherTask);	  //instances with lower priority
	bwprintf(COM2, "Created: %d\n\r", retVal);
	retVal = Create(2, otherTask);
	bwprintf(COM2, "Created: %d\n\r", retVal);
	retVal = Create(0, otherTask);     //instances with higher priority
	bwprintf(COM2, "Created: %d\n\r", retVal);
	retVal = Create(0, otherTask);
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
	*(int *)(0x28) = syscall;

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
	asm("stmfd sp!, {r0-r3}\n\t"
		"ldr r0, [lr, #-4];\n\t"
		"bic r1, r0, #0xFF000000\n\t"
		"stmfd sp!, {r1}");

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
	asm("mov ip, sp\n\t"
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
	asm("ldmfd sp!, {r0,r2-r6}");
		// asm("mov r0, #1\n\t"
		// "mov r1, r6\n\t"
		// "bl bwputr(PLT)");
	asm("str r2, [r6, #0]\n\t"
		"str r3, [r6, #4]\n\t"
		"str r4, [r6, #8]\n\t"
		"str r5, [r6, #12]\n\t"
		"str r0, [r6, #16]");
	// 9. pop the registers from its stack
	asm("ldmfd sp!, {r0, r4-r9, sl, fp}");
	// 6. acquire the sp of the active task;
	// 8. acquire the spsr of the active task 
	asm("str ip, [r0, #0]\n\t"
		"str r1, [r0, #4]");
} // getNextRequest

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
	tds[0].sp = MEM_END - getStackSize();
										// First user stack starts below kernel stack
	tds[0].spsr = PSR_USR;				// Initialize to user mode
	tds[0].retVal = 0;					// Initialize return value to 0
	tds[0].state = READY;				// Task is ready
	tds[0].tid = 1;						// First user task has ID 1
	tds[0].parentTid = 0;				// Parent is 0 (kernel)
	tds[0].nextTask = 0;				// No next task in priority queue

	// Set lr to the location of the firstUserTask
	void (*syscall)();
	syscall = firstUserTask;
	*(tds[0].sp) = syscall+LOAD_LOC;

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
				newTask->sp = MEM_END - newTid * getStackSize();
																	// Position of new stack in memory
				newTask->spsr = PSR_USR;							// Initialize to user mode
				newTask->retVal = 0;								// Initialize return value to 0
				newTask->state = READY;								// Task is ready
				newTask->tid = newTid;								// First user task has ID 1
				newTask->parentTid = parentTid;						// Parent is 0 (kernel)
				newTask->nextTask = 0;								// No next task in priority queue

				// Set lr to the location of the firstUserTask
				*(newTask->sp) = syscall+LOAD_LOC;

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
					newQueue->tailOfQueue->nextTask = newTask;
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
	TD tds[MAX_TASKS];							// hardcode 33 tasks max
	Queue priorityQueues[MAX_PRIORITIES];		// hardcode 8 priority queues

	TD *active;									// The task that will run
	Request req;								// The requests of the task along with other info
	initialize( tds, priorityQueues, &req );	// tds is an array of TDs
	
	// Begin kernel execution
	for ( ; ; ) {
		active = schedule( priorityQueues, &req );
												// Active will be scheduled to run next
		if ( active == 0 ) break;				// Return cleanly if all tasks exited
		getNextRequest( active, &req );			// req is a pointer to a Request
		handle( tds, priorityQueues, &req );	// Execute the kernel code of the kernel primitive
	} // for

	return 0;
} // main
