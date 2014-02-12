#include "syscalls.h"

/*
 *	Kernel primitives (system calls) are implemented
 *	in the following functions
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
	/* TIMING CODE IN COMMENTS */
	/*unsigned int *time = (unsigned int *)TIME_VAL;
	 unsigned int *control = (unsigned int *)TIME_CTRL;
	 *control = *control | FREQ_BIT;
	 *control = *control | ENABLE_BIT;
	unsigned int oldTime = *time;*/

	asm("swi 6");

	 /*unsigned int newTime = *time;
	 unsigned int diff = oldTime - newTime;

	 bwprintf( COM2, "clock cycles: %d", diff ); */

	return;
} // Send

//-----------------------------------------------------------------------------------------------
//	Calling task receives a message from another task
//-----------------------------------------------------------------------------------------------
int Receive ( int *tid, char *message, int mslen ) {
	asm("swi 7");

	return;
} // Receive

//-----------------------------------------------------------------------------------------------
//	Calling task replys a message from a sender
//-----------------------------------------------------------------------------------------------
int Reply ( int tid, char *reply, int rplen ) {
	asm("swi 8");

	return;
} // Reply

//-----------------------------------------------------------------------------------------------
//	Calling task blocks and wait for a specific event
//-----------------------------------------------------------------------------------------------
int AwaitEvent ( int EventType ) {
	asm("swi 9");

	return;
} // AwaitEvent
