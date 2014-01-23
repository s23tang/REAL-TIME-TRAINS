

/*
 * iotest.c
 */
#include <bwio.h>
#include <ts7200.h>

#define FOREVER 	for( ; ; )
#define PSR_USR		0x60000010
#define LOAD_LOC	0x00218000

// use 33 tasks max so 0xf5178 bytes each
// start at 0x00044f88 - 0x01fdd000

/*
 *	Task descriptor structure
 */
typedef struct {
	int *sp;
	int spsr;
	int retVal;
	enum { ACTIVE, READY, BLOCKED, ZOMBIE } state;
	unsigned int tid;
	unsigned int parentTid;
	struct TD *nextTask;
} TD;

/*
 *	A simple queue of a linked list of TD's
 */
typedef struct Queues{
	TD *headOfQueue;
	TD *tailOfQueue;
};

/*
 *	Request structure, initialized in main and
 *	passed around
 */
typedef struct {
	int arg0;
	int arg1;
	int arg2;
	int arg3;
	unsigned int freeTid;
	TD *freeList;
	TD **priorityQueues;
} Request;

void firstUserTask() {
	bwprintf( COM2, "firstUserTask.c: initializing\n\r" );
	FOREVER {
		bwprintf( COM2, "firstUserTask.c: good-bye\n\r" );	
		asm("swi");
		bwprintf( COM2, "firstUserTask.c: hello\n\r" );
	}
} // firstUserTask

/*
 *	Kernel primitives (system calls) are implemented
 *	in the following functions
 */

//-----------------------------------------------------
//	Create a task for code with the given priority,
//	returning the task id of the created task
//-----------------------------------------------------
int Create( int priority, void (*code) ( ) ) {

	return 0;
} // Create

//-----------------------------------------------------
//	Get the task id of the calling task
//-----------------------------------------------------
int MyTid( ) {

	return 0;
} // MyTid

//-----------------------------------------------------
//	Get the task id of the parent task
//-----------------------------------------------------
int MyParentTid( ) {

	return 0;
} // MyParentTid

//-----------------------------------------------------
//	Calling task gives up its runtime, and puts itself
//	on the end of the priority queue
//-----------------------------------------------------
void Pass ( ) {

} // Pass

//-----------------------------------------------------
//	Calling task ends its execution and becomes zombie
//-----------------------------------------------------
void Exit ( ) {

} // Exit


/*
 *	The function getNextRequest will allow for context
 *	switching between user and kernel. And initialize
 *	will be setup for bootstrapping kernel.
 */

//-----------------------------------------------------
//	Before kerent: this portion is for setting up and
// 	switching from kernel to the user code
//	
//	After kerent: this portion will be accessed after
//	the user raises a software interrupt, and will
//	switch to kernel execution
//-----------------------------------------------------
void getNextRequest(TD *active){
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
	asm("stmfd sp!, {r0-r3}");
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
	asm("ldmfd r2!, {lr}\n\t");
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
	asm("ldmfd sp!, {r0-r4}");
	// 9. pop the registers from its stack
	asm("ldmfd sp!, {r0, r4-r9, sl, fp}");
	// 6. acquire the sp of the active task;
	// 8. acquire the spsr of the active task 
	asm("str ip, [r0, #0]\n\t"
		"str r1, [r0, #4]");
} // getNextRequest

//-----------------------------------------------------
//	This will boostrap the kernel by creating a first
//	task which looks as if it has just left kernel
//	execution; i.e. the first user stack will be
//	filled with placeholder values, and the lr will be
//	the program counter for the code of the first task
//-----------------------------------------------------
void initialize( TD *tds ) {
	// Set stack pointer, PSR, and return value
	tds[0].sp = (int *)0x0013A100;		// 0x00044f88 + 0xf5178
	tds[0].spsr = PSR_USR;
	tds[0].retVal = 0;

	// Set lr to the location of the firstUserTask
	void (*syscall)();
	syscall = firstUserTask;
	*(tds[0].sp) = syscall+LOAD_LOC;

	// Fill user stack with placeholder values, and
	//	put the pc of firstUserTask into lr
	unsigned int i;
	for ( i = 12; i > 3; i-- ) {
		tds[0].sp--;
		*(tds[0].sp) = i;
	} // for
} // initialize

TD *schedule( TD *tds ) {
	return &(tds[0]);
} // schedule

void kerxit( TD *active, Request *req ) {
	bwprintf( COM2, "kerxit.c: Hello.\n\r" );
	bwprintf( COM2, "kerxit.c: Activating.\n\r" );
	getNextRequest(active);
	bwprintf( COM2, "kerxit.c: Good-bye.\n\r" );
} // kerxit

void handle( TD *tds, Request *req ) {

} // handle

int main( int argc, char *argv[] ) {
	// declare kernel data structures
	unsigned int i;
	TD tds[1];

	TD *active;
	Request *req;

	initialize( tds );	// tds is an array of TDs
	for ( i = 0; i < 4; i++ ) {
		active = schedule( tds );
		kerxit( active, req );	// req is a pointer to a Request
		handle( tds, req );
	} // for
	return 0;
} // main