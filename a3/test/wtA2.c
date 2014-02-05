/*
 * wtA2.c
 */
#include <bwio.h>
#include <ts7200.h>
#include "wtA2.h"

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
//	Calling task will try to register itself as a server
//-----------------------------------------------------------------------------------------------
int RegisterAs( char *name ) {
	NSstruct request, reply;
	request.type = REGISTERAS;
	request.name = name; 

	Send( NAME_SERVER, (char *)&request, sizeof(NSstruct), (char *)&reply, sizeof(NSstruct) );

	if ( reply.type != REQUEST_OK ) return -1;
	return 0;
} // RegisterAs

//-----------------------------------------------------------------------------------------------
//	Calling task will try to get the task ID for some server
//-----------------------------------------------------------------------------------------------
int WhoIs( char *name ) {
	NSstruct request, reply;
	request.type = WHOIS;
	request.name = name;

	Send( NAME_SERVER, (char *)&request, sizeof(NSstruct), (char *)&reply, sizeof(NSstruct) );

	if ( reply.type != REQUEST_OK ) return -1;
	return reply.tid;
} // WhoIs

/*
 * User tasks for assignment 2 are below
 */

/*
 *	player(*) functions all have different strategies of playing rock paper scissors( random )
 */

void player4() {
	int rpsS = WhoIs( "rps\000" );
	int mt = MyTid();
	if ( rpsS == -1 ) {
		bwprintf( COM2, "player %d: failed to get rps server\n\r", mt );
		Exit();
	}
	RPSstruct request;
	RPSstruct reply;
	request.type = SIGN_UP;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	
	if ( reply.type != REQUEST_OK ) {
		bwprintf( COM2, "player %d: failed to sign up\n\r", mt );
		Exit();
	}

	request.type = PLAY;
	request.move = ROCK;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	if ( reply.type == WIN ) {
	} else if ( reply.type == LOSE ) {
	} else if ( reply.type == TIE ) {
	}else if ( reply.type == LEAVER ) {
		request.type = SIGN_UP;
		Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	}
	
	request.type = QUIT;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	Exit();
} // player4

void player1() {
	int rpsS = WhoIs( "rps\000" );
	int mt = MyTid();
	if ( rpsS == -1 ) {
		bwprintf( COM2, "player %d: failed to get rps server\n\r", mt );
		Exit();
	}
	RPSstruct request;
	RPSstruct reply;
	request.type = SIGN_UP;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	
	if ( reply.type != REQUEST_OK ) {
		bwprintf( COM2, "player %d: failed to sign up\n\r", mt );
		Exit();
	}

	request.type = PLAY;
	request.move = ROCK;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	if ( reply.type == WIN ) {
	} else if ( reply.type == LOSE ) {
	} else if ( reply.type == TIE ) {
	}else if ( reply.type == LEAVER ) {
		request.type = SIGN_UP;
		Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	}
	request.type = QUIT;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	
	request.type = SIGN_UP;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	request.type = PLAY;
	request.move = PAPER;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	if ( reply.type == WIN ) {
	} else if ( reply.type == LOSE ) {
	} else if ( reply.type == TIE ) {
	} else if ( reply.type == LEAVER ) {
		request.type = SIGN_UP;
		Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	}

	request.type = PLAY;
	request.move = PAPER;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	if ( reply.type == WIN ) {
	} else if ( reply.type == LOSE ) {
	} else if ( reply.type == TIE ) {
	} else if ( reply.type == LEAVER ) {
		request.type = QUIT;
		Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	}

	Exit();
} // player1

void player2() {
	int rpsS = WhoIs( "rps\000" );
	int mt = MyTid();
	bwprintf(COM2, "WTF %d\n\r", mt);
	if ( rpsS == -1 ) {
		bwprintf( COM2, "player %d: failed to get rps server\n\r", mt );
		Exit();
	}
	RPSstruct request;
	RPSstruct reply;
	request.type = SIGN_UP;

	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	
	if ( reply.type != REQUEST_OK ) {
		bwprintf( COM2, "player %d: failed to sign up\n\r", mt );
		Exit();
	}

	request.type = PLAY;
	request.move = PAPER;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	if ( reply.type == WIN ) {
	} else if ( reply.type == LOSE ) {
	} else if ( reply.type == TIE ) {
	} else if ( reply.type == LEAVER ) {
		request.type = SIGN_UP;
		Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	}

	request.type = PLAY;
	request.move = SCISSORS;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	if ( reply.type == WIN ) {
	} else if ( reply.type == LOSE ) {
	} else if ( reply.type == TIE ) {
	} else if ( reply.type == LEAVER ) {
		// Create another player to play with
		void (*ns)();
		ns = player4;
		Create(3, ns);
		request.type = SIGN_UP;
		Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	}
	request.type = PLAY;
	request.move = ROCK;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	if ( reply.type == WIN ) {
	} else if ( reply.type == LOSE ) {
	} else if ( reply.type == TIE ) {
	} else if ( reply.type == LEAVER ) {
		request.type = SIGN_UP;
		Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	}

	request.type = QUIT;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	Exit();
} // player2

void player3() {
	int rpsS = WhoIs( "rps\000" );
	int mt = MyTid();
	if ( rpsS == -1 ) {
		bwprintf( COM2, "player %d: failed to get rps server\n\r", mt );
		Exit();
	}
	RPSstruct request;
	RPSstruct reply;
	request.type = SIGN_UP;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	
	if ( reply.type != REQUEST_OK ) {
		bwprintf( COM2, "player %d: failed to sign up\n\r", mt );
		Exit();
	}

	request.type = PLAY;
	request.move = ROCK;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	if ( reply.type == WIN ) {
	} else if ( reply.type == LOSE ) {
	} else if ( reply.type == TIE ) {
	}
	else if ( reply.type == LEAVER ) {
		request.type = SIGN_UP;
		Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );
	}

	request.type = QUIT;
	Send( rpsS, (char *)&request, sizeof(RPSstruct), (char *)&reply, sizeof(RPSstruct) );

	Exit();
} // player3

//-----------------------------------------------------------------------------------------------
//	Server that fascilitates the playing of rock paper scissors, and handles printing
//-----------------------------------------------------------------------------------------------
void rpsServer() {
	char *rock = "ROCK\000";
	char *paper = "PAPER\000";
	char *scissors = "SCISSORS\000";
	char * moveArray[3];
	moveArray[0] = rock;
	moveArray[1] = paper;
	moveArray[2] = scissors;

	int check = RegisterAs( "rps\000" );
	if ( check == -1 ) {
		bwprintf( COM2, "rpsServer: register failed\n\r" );
		Exit();
	}
	int unMatchedTid = 0;
	Player players[MAX_TASKS+1];

	unsigned int i;
	for ( i = 0; i < MAX_TASKS; i++ ) {
		players[i].againstTid = 0;
		players[i].move = NONE;
	}

	int senderTid;
	RPSstruct request;
	RPSstruct reply;

	FOREVER {
		Receive( &senderTid, (char *)&request, sizeof(RPSstruct) );

		switch( request.type ) {
			case SIGN_UP:
				{
					bwprintf(COM2, "Task %d signed up.\n\r", senderTid);
					if ( unMatchedTid ) {
						Player *newPlayer = &(players[senderTid]);
						Player *waitingPlayer = &(players[unMatchedTid]);
						newPlayer->againstTid = unMatchedTid;
						waitingPlayer->againstTid = senderTid;
						reply.type = REQUEST_OK;

						bwprintf(COM2, "Task %d matched up with task %d\n\r", senderTid, unMatchedTid);
						bwprintf(COM2, "Press any key to continue--------------\n\r");
						getc(COM2);

						Reply( unMatchedTid, (char *)&reply, sizeof(RPSstruct) );
						Reply( senderTid, (char *)&reply, sizeof(RPSstruct) );
						unMatchedTid = 0;
					} else {
						unMatchedTid = senderTid;
					}
				}
				break;
			case PLAY:
				{
					Player *currPlayer = &(players[senderTid]);
					Player *partnerPlayer = &(players[currPlayer->againstTid]);

					if ( currPlayer->move != NONE ) {
						if ( currPlayer->move == LEFT ) {
							bwprintf(COM2, "Task %d left, task %d tried to play %s\n\r", currPlayer->againstTid, senderTid, moveArray[request.move]);
							bwprintf(COM2, "Press any key to continue--------------\n\r");
							getc(COM2);

							currPlayer->againstTid = 0;
							reply.type = LEAVER;
							Reply( senderTid, (char *)&reply, sizeof(RPSstruct) );
						}else if ( ( request.move == ROCK && currPlayer->move == SCISSORS  ) 
							|| ( request.move == PAPER && currPlayer->move == ROCK ) 
							|| ( request.move == SCISSORS && currPlayer->move == PAPER ) ) {
							
							bwprintf(COM2, "Task %d played %s, task %d played %s\n\r", currPlayer->againstTid, moveArray[currPlayer->move],senderTid, moveArray[request.move]);
							bwprintf(COM2, "Task %d won!\n\r", senderTid);
							bwprintf(COM2, "Press any key to continue--------------\n\r");
							getc(COM2);

							reply.type = LOSE;
							Reply( currPlayer->againstTid, (char *)&reply, sizeof(RPSstruct) );
							reply.type = WIN;
							Reply( senderTid, (char *)&reply, sizeof(RPSstruct) );
						
						} else if ( ( currPlayer->move == ROCK && request.move == SCISSORS  ) 
							|| ( currPlayer->move == PAPER && request.move == ROCK ) 
							|| ( currPlayer->move == SCISSORS && request.move == PAPER ) ) {

							bwprintf(COM2, "Task %d played %s, task %d played %s\n\r", currPlayer->againstTid, moveArray[currPlayer->move],senderTid, moveArray[request.move]);
							bwprintf(COM2, "Task %d won!\n\r", currPlayer->againstTid);
							bwprintf(COM2, "Press any key to continue--------------\n\r");
							getc(COM2);

							reply.type = WIN;
							Reply( currPlayer->againstTid, (char *)&reply, sizeof(RPSstruct) );
							reply.type = LOSE;
							Reply( senderTid, (char *)&reply, sizeof(RPSstruct) );

						} else {
							bwprintf(COM2, "Task %d played %s, task %d played %s\n\r", currPlayer->againstTid, moveArray[currPlayer->move],senderTid, moveArray[request.move]);
							bwprintf(COM2, "TIEEEEEEE!\n\r");
							bwprintf(COM2, "Press any key to continue--------------\n\r");
							getc(COM2);

							reply.type = TIE;
							Reply( currPlayer->againstTid, (char *)&reply, sizeof(RPSstruct) );
							Reply( senderTid, (char *)&reply, sizeof(RPSstruct) );
						}
						currPlayer->move = NONE;
					} else {
						partnerPlayer->move = request.move; 
					}
				}
				break;
			case QUIT:
				{
					Player *currPlayer = &(players[senderTid]);
					Player *partnerPlayer = &(players[currPlayer->againstTid]);
					if ( currPlayer->move == LEFT ) {
						bwprintf( COM2, "Task %d and task %d quit!\n\r", senderTid, currPlayer->againstTid );
						bwprintf(COM2, "Press any key to continue--------------\n\r");
						getc(COM2);
						currPlayer->move = NONE;
					} else if ( currPlayer->move != NONE ) {
						currPlayer->move = NONE;
						reply.type = LEAVER;
						bwprintf( COM2, "Task %d quit and notifying task %d to sign up again\n\r", senderTid, currPlayer->againstTid );
						bwprintf(COM2, "Press any key to continue--------------\n\r");
						getc(COM2);
						Reply( currPlayer->againstTid, (char *)&reply, sizeof(RPSstruct) );
						partnerPlayer->againstTid = 0;
					} else {
						partnerPlayer->move = LEFT;
					}
					currPlayer->againstTid = 0;

					reply.type = REQUEST_OK;

					Reply( senderTid, (char *)&reply, sizeof(RPSstruct) );
				}
				break;
		} // switch
	} // FOREVER
} // rpsServer

//-----------------------------------------------------------------------------------------------
//	Name server which will always have task ID 2, and manages names for servers
//-----------------------------------------------------------------------------------------------
void nameServer() {
	// Table for all servers able to be registered
	ServerEntry serverTable[NUM_SERVERS];	// Only has rps server for now
	serverTable[RPS_INDEX].name = "rps\000";

	int senderTid;
	NSstruct request;
	NSstruct reply;

	FOREVER {
		Receive( &senderTid, (char *)&request, sizeof(NSstruct) );
		// Zero out before sending (cleaness)
		reply.type = 0;
		reply.name = 0;
		reply.tid  = 0;
		
		switch( request.type ) {
			case REGISTERAS:
				{
					unsigned int i;
					unsigned int legalName = 0;
					char *reqName = request.name;
					char *serverName;

					if ( reqName[0] == 'r' ) {
						serverName = serverTable[RPS_INDEX].name;
						for ( i = 1; i < RPS_SIZE; i++ ) {
							if ( reqName[i] != serverName[i] ) {
								break;
							} // if
						} // for

						if ( i == RPS_SIZE ) {
							legalName = 1;
							reply.type = REQUEST_OK;
							serverTable[RPS_INDEX].tid = senderTid;
						} // if
					} // if

					if ( !legalName ) reply.type = REQUEST_BAD;

					Reply( senderTid, (char *)&reply, sizeof(NSstruct) );
				}
				break;
			case WHOIS:
				{
					unsigned int i;
					unsigned int legalName = 0;
					char *reqName = request.name;
					char *serverName;

					if ( reqName[0] == 'r' ) {
						serverName = serverTable[RPS_INDEX].name;
						for ( i = 1; i < RPS_SIZE; i++ ) {
							if ( reqName[i] != serverName[i] ) {
								break;
							} // if
						} // for

						if ( i == RPS_SIZE ) {
							legalName = 1;
							reply.type = REQUEST_OK;
							reply.tid = serverTable[RPS_INDEX].tid;
						} // if
					} // if

					if ( !legalName ) reply.type = REQUEST_BAD;

					Reply( senderTid, (char *)&reply, sizeof(NSstruct) );
				}
				break;
			default:
				;	// never reached
		}
	} // FOREVER
} // nameServer

/* FUNCTIONS to test timing for sending
void sender() { // Or 64
	char send[4];
	char reply[4];
	Send( 3, (char *)send, 4, (char *)reply, 4 );
	Exit();
}

void recvr() { // Or 64
	int tid;
	char recv[4];
	char reply[4];
	Receive( &tid, (char *)recv, 4 );
	Reply( tid, (char *)reply, 4 );
	Exit();
}
*/

void joker() {
	bwprintf(COM2, "joker: joker style\n\r");
	Exit();
}

//-----------------------------------------------------------------------------------------------
//	First user task that will be placed by the kernel into the priority queue
//-----------------------------------------------------------------------------------------------
// void firstUserTask(){
	
// 	void (*ns)();
// 	ns = nameServer;
// 	unsigned int tid;
// 	tid = Create(0, ns);
// 	bwprintf(COM2, "First: created name server\n\r");

// 	ns = rpsServer;
// 	tid = Create(2, ns);
// 	bwprintf(COM2, "First: created rps server with tid %d\n\r", tid);

// 	// ns = player1;
// 	// tid = Create(4, ns);
// 	// bwprintf(COM2, "First: created player tid %d\n\r", tid);

// 	ns = player2;
// 	tid = Create(3, ns);
// 	bwprintf(COM2, "First: created player tid %d\n\r", tid);

// 	// ns = player3;
// 	// tid = Create(4, ns);
// 	// bwprintf(COM2, "First: created player tid %d\n\r", tid);
// 	unsigned int tid;
// 	tid = MyTid();

// 	bwprintf( COM2, "tid\n\r");

// 	bwprintf(COM2, "First: exiting\n\r");
// 	Exit();
// } // firstUserTask

void other() {
	bwprintf(COM2, "other: pls\n\r");
	Exit();
}

//-----------------------------------------------------------------------------------------------
//	Tasks that will be created by the first user task contains the following
//-----------------------------------------------------------------------------------------------
void theOtherTask(){
	// int myTid, myParentTid;
	// myTid = MyTid();
	// myParentTid = MyParentTid();
	// bwprintf(COM2, "MyTid: %d, MyParentTid: %d\n\r", myTid, myParentTid);
	// Pass();
	// bwprintf(COM2, "MyTid: %d, MyParentTid: %d\n\r", myTid, myParentTid);
	// Exit();
	void (*otherTask)();
	otherTask = other;
	//Create four instances 
	unsigned int retVal;
	retVal = Create(3, otherTask);	  //instances with lower priority
	bwprintf(COM2, "OtherTask created: %d\n\r", retVal);
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
	asm("ldr r1, [r0, #0]");
	// 4. pop the registers of the active task 
	asm("mov sp, r1\n\t"
		"ldmfd sp!, {r4-r9, sl, fp, ip, lr}\n\t"
		"mov r2, sp\n\t"
		"add sp, sp, #16");
	// 5. put the retVal in r0
	asm("mov r3, lr"); // above puts return value but no inverse
	// 6. return to SVC state
	asm("mrs r1, CPSR\n\t"
		"bic r1, r1, #0x1F\n\t"
		"orr r1, r1, #0x13\n\t"
		"msr CPSR, r1");
	// 7. install the spsr to the active task
	asm("ldr r1, [r0, #4]\n\t"
		"msr SPSR, r1");
	// 8. install the pc of the active task
	asm("mov lr, r3\n\t"
		"ldmfd r2, {r1-r3}\n\t"
		"ldr r0, [r0, #8]\n\t"
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
	asm("Store:\n\t"
		"add r2, r2, #8\n\t"
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
        destBuf[i] = 0;   //Indicate the end of message
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
				bwprintf(COM2, "%d\n\r", priorityQueues[whichQueue].headOfQueue->retVal);
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

	/* COMMENT TURNS INSTRUCTION/DATA CACHING ON */
	asm( "MRC p15, 0, r0, c1, c0, 0\n\t"
		 "ldr r1, =4100\n\t"
		 "bic r0, r0, r1\n\t"
		 "ORR r0, r0, r1\n\t"
		 "MCR p15, 0, r0, c1, c0, 0" );

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
