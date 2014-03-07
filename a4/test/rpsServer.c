#include "rpsServer.h"
#include "wtA4.h"

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
