#include "wtA4.h"
#include "nameServer.h"
#include "syscalls.h"

//-----------------------------------------------------------------------------------------------
//  Calling task will try to register itself as a server
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
//  Calling task will try to get the task ID for some server
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
//  Name server which will always have task ID 2, and manages names for servers
//-----------------------------------------------------------------------------------------------
void nameServer() {
    // Table for all servers able to be registered
    ServerEntry serverTable[NUM_SERVERS];   // clock server, 4 UART servers
    serverTable[CLK_INDEX].name 	= "clock";
    serverTable[UART1GET_S].name 	= "u1g";
    serverTable[UART1XMIT_S].name 	= "u1x";
    serverTable[UART2GET_S].name 	= "u2g";
    serverTable[UART2XMIT_S].name 	= "u2x";
    serverTable[ROUTE_FINDER].name  = "route";

    int senderTid;
    NSstruct request;
    NSstruct reply;

    FOREVER {
        Receive( &senderTid, (char *)&request, sizeof(NSstruct) );
        // Zero out before sending (cleaness)
        reply.type = 0;
        reply.name = 0;
        reply.tid  = 0;

        char *reqName = request.name;
        unsigned int serverIndex;

        switch( request.type ) {
            case REGISTERAS:
                {
                    if ( reqName[0] == 'c' ) {
                    	reply.type = REQUEST_OK;
                        serverIndex = CLK_INDEX;
                        serverTable[serverIndex].tid = senderTid;
                    } else if ( reqName[0] == 'u' ) {
                    	if ( reqName[1] == '1' ) {
                    		if ( reqName[2] == 'g' ) {
                    			reply.type = REQUEST_OK;
                    			serverIndex = UART1GET_S;
                    		} else {
                    			reply.type = REQUEST_OK;
                    			serverIndex = UART1XMIT_S;
                    		} // if
                    	} else {
                    		if ( reqName[2] == 'g' ) {
                    			reply.type = REQUEST_OK;
                    			serverIndex = UART2GET_S;
                    		} else {
                    			reply.type = REQUEST_OK;
                    			serverIndex = UART2XMIT_S;
                    		} // if
                    	} // if
                    	serverTable[serverIndex].tid = senderTid;
                    } else if (reqName[0] == 'r' ) {
                        reply.type = REQUEST_OK;
                        serverIndex = ROUTE_FINDER;
                        serverTable[serverIndex].tid = senderTid;
                    } else {
                    	reply.type = REQUEST_BAD;
                    }

                    Reply( senderTid, (char *)&reply, sizeof(NSstruct) );
                }
                break;
            case WHOIS:
                {
                	if ( reqName[0] == 'c' ) {
                    	reply.type = REQUEST_OK;
                        serverIndex = CLK_INDEX;
                        reply.tid = serverTable[serverIndex].tid;
                    } else if ( reqName[0] == 'u' ) {
                    	if ( reqName[1] == '1' ) {
                    		if ( reqName[2] == 'g' ) {
                    			reply.type = REQUEST_OK;
                    			serverIndex = UART1GET_S;
                    		} else {
                    			reply.type = REQUEST_OK;
                    			serverIndex = UART1XMIT_S;
                    		} // if
                    	} else {
                    		if ( reqName[2] == 'g' ) {
                    			reply.type = REQUEST_OK;
                    			serverIndex = UART2GET_S;
                    		} else {
                    			reply.type = REQUEST_OK;
                    			serverIndex = UART2XMIT_S;
                    		} // if
                    	} // if
                    	reply.tid = serverTable[serverIndex].tid;
                    } else if (reqName[0] == 'r' ) {
                        reply.type = REQUEST_OK;
                        serverIndex = ROUTE_FINDER;
                        reply.tid = serverTable[serverIndex].tid;
                    } else {
                    	reply.type = REQUEST_BAD;
                    }

                    Reply( senderTid, (char *)&reply, sizeof(NSstruct) );
                }
                break;
            default:
                ;       // never reached
        }
    } // FOREVER
} // nameServer
