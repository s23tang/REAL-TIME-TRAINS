#include "wtA4.h"
#include "nameServer.h"
#include "syscalls.h"

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

//-----------------------------------------------------------------------------------------------
//	Name server which will always have task ID 2, and manages names for servers
//-----------------------------------------------------------------------------------------------
void nameServer() {
	// Table for all servers able to be registered
	ServerEntry serverTable[NUM_SERVERS];	// Rock paper scissors and clock server
	serverTable[CLK_INDEX].name = "clock\000";

	//serverTable[RPS_INDEX].name = "rps\000"; // for testing

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

					/* if ( reqName[0] == 'r' ) {
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
					} */

					if ( reqName[0] == 'c' ) {
						serverName = serverTable[CLK_INDEX].name;
						for ( i = 1; i < CLK_SIZE; i++ ) {
							if ( reqName[i] != serverName[i] ) {
								break;
							} // if
						} // for

						if ( i == CLK_SIZE ) {
							legalName = 1;
							reply.type = REQUEST_OK;
							serverTable[CLK_INDEX].tid = senderTid;
						} // if
					}

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

					/* if ( reqName[0] == 'r' ) {
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
					} */

					if ( reqName[0] == 'c' ) {
						serverName = serverTable[CLK_INDEX].name;
						for ( i = 1; i < CLK_SIZE; i++ ) {
							if ( reqName[i] != serverName[i] ) {
								break;
							} // if
						} // for

						if ( i == CLK_SIZE ) {
							legalName = 1;
							reply.type = REQUEST_OK;
							reply.tid = serverTable[CLK_INDEX].tid;
						} // if
					}

					if ( !legalName ) reply.type = REQUEST_BAD;

					Reply( senderTid, (char *)&reply, sizeof(NSstruct) );
				}
				break;
			default:
				;	// never reached
		}
	} // FOREVER
} // nameServer
