#include "wtA4.h"
#include "trainDriver.h"
#include "syscalls.h"
#include "track_data.h"
#include "nameServer.h"
#include "routeFinder.h"
#include "clockServer.h"
#include "io.h"

void init_table(int *table){ // train 45
	table[0] = 0;
	table[1] = 63;
	table[2] = 142;
	table[3] = 217;	
	table[4] = 283; 
	table[5] = 357;
	table[6] = 440;
	table[7] = 497;
	table[8] = 550;
	table[9] = 620;
	table[10] = 684;
	table[11] = 752;
	table[12] = 822;
	table[13] = 822;
}

// void init_table(int *table){ // train 49
// 	table[0] = 0;
// 	table[1] = 57;  
// 	table[2] = 150;	
// 	table[3] = 220;	
// 	table[4] = 280; 
// 	table[5] = 360; 
// 	table[6] = 440; 
// 	table[7] = 480; 
// 	table[8] = 560; 
// 	table[9] = 640;	
// 	table[10] = 720; 
// 	table[11] = 760; 
// 	table[12] = 830; 
// 	table[13] = 830; 
// }

void init_velocity(int *straightVelocity, int *curveVelocity){ // train 45
	straightVelocity[0]  = 11;
	straightVelocity[1]  = 74;
	straightVelocity[2]  = 125;
	straightVelocity[3]  = 171;
	straightVelocity[4]  = 217;
	straightVelocity[5]  = 272;
	straightVelocity[6]  = 327;
	straightVelocity[7]  = 356;
	straightVelocity[8]  = 391;
	straightVelocity[9]  = 439;
	straightVelocity[10] = 485;
	straightVelocity[11] = 528;
	straightVelocity[12] = 552;
	straightVelocity[13] = 552;

	curveVelocity[0]  = 11;
	curveVelocity[1]  = 74;
	curveVelocity[2]  = 125;
	curveVelocity[3]  = 171;
	curveVelocity[4]  = 217;
	curveVelocity[5]  = 272;
	curveVelocity[6]  = 327;
	curveVelocity[7]  = 356;
	curveVelocity[8]  = 391;
	curveVelocity[9]  = 439;
	curveVelocity[10] = 485;
	curveVelocity[11] = 528;
	curveVelocity[12] = 552;
	curveVelocity[13] = 552;
}

void init_accelDistance( int *accelDistance, int *accelTime ) { // train 45
	accelDistance[0] = 0;
	accelDistance[1] = 40;
	accelDistance[2] = 83;
	accelDistance[3] = 133;
	accelDistance[4] = 191;
	accelDistance[5] = 274;
	accelDistance[6] = 363;
	accelDistance[7] = 414;
	accelDistance[8] = 481;
	accelDistance[9] = 577;
	accelDistance[10] = 673;
	accelDistance[11] = 769;
	accelDistance[12] = 823;
	accelDistance[13] = 823;

	accelTime[0] = 80;
	accelTime[1] = 150;
	accelTime[2] = 194;
	accelTime[3] = 228;
	accelTime[4] = 258;
	accelTime[5] = 292;
	accelTime[6] = 322;
	accelTime[7] = 337;
	accelTime[8] = 355;
	accelTime[9] = 378;
	accelTime[10] = 399;
	accelTime[11] = 418;
	accelTime[12] = 428;
	accelTime[13] = 428;
}

// void init_velocity(int *straightVelocity, int *curveVelocity){ // train 49
// 	straightVelocity[0]  = 20;
// 	straightVelocity[1]  = 77;
// 	straightVelocity[2]  = 132;
// 	straightVelocity[3]  = 175;
// 	straightVelocity[4]  = 220;
// 	straightVelocity[5]  = 272;
// 	straightVelocity[6]  = 327;
// 	straightVelocity[7]  = 373;
// 	straightVelocity[8]  = 429;
// 	straightVelocity[9]  = 480;
// 	straightVelocity[10] = 525;
// 	straightVelocity[11] = 589;
// 	straightVelocity[12] = 622;
// 	straightVelocity[13] = 625;

// 	curveVelocity[0]  = 9;
// 	curveVelocity[1]  = 61;
// 	curveVelocity[2]  = 108;
// 	curveVelocity[3]  = 143;
// 	curveVelocity[4]  = 179;
// 	curveVelocity[5]  = 215;
// 	curveVelocity[6]  = 240;
// 	curveVelocity[7]  = 297;
// 	curveVelocity[8]  = 350;
// 	curveVelocity[9]  = 379;
// 	curveVelocity[10] = 435;
// 	curveVelocity[11] = 463;
// 	curveVelocity[12] = 489;
// 	curveVelocity[13] = 498;
// }

// void init_accelDistance( int *accelDistance, int *accelTime ) { // train 49
// 	accelTime[0] = 50;
// 	accelTime[1] = 110;
// 	accelTime[2] = 192;
// 	accelTime[3] = 219;
// 	accelTime[4] = 244;
// 	accelTime[5] = 270;
// 	accelTime[6] = 295;
// 	accelTime[7] = 315;
// 	accelTime[8] = 337;
// 	accelTime[9] = 356;
// 	accelTime[10] = 372;
// 	accelTime[11] = 394;
// 	accelTime[12] = 405;
// 	accelTime[13] = 406;

// 	accelDistance[0] = 0;
// 	accelDistance[1] = 17;
// 	accelDistance[2] = 55;
// 	accelDistance[3] = 96;
// 	accelDistance[4] = 145;
// 	accelDistance[5] = 209;
// 	accelDistance[6] = 283;
// 	accelDistance[7] = 353;
// 	accelDistance[8] = 441;
// 	accelDistance[9] = 527;
// 	accelDistance[10] = 607;
// 	accelDistance[11] = 729;
// 	accelDistance[12] = 796;
// 	accelDistance[13] = 802;
// }

// Find the distance from the curSensor to next sensor along the path
int findNextDistance(Path* path, int curSensor, track_node* track, int *nextSensor){
	int searchPos = path->startIndex;    // we'll search from the beginning of the path
	for (searchPos = path->startIndex; searchPos > 0; searchPos--)
	{	// found the current sensor in the path array, starting to find the next sensor along
		// the path
		if(path->path[searchPos].index == curSensor) break; 
	}
	if(searchPos == 0) return 0;     // Dest, do not need the distance

	// distance from current sensor to next landmark
	track_node node = track[path->path[searchPos].index];
	track_edge edge = node.edge[DIR_AHEAD];      // the direction for sensor is always "DIR_AHEAD"
	int distance = edge.dist;
	searchPos--;

	for( ;searchPos >= 0; searchPos--){
		node = track[path->path[searchPos].index];
		if(node.type == NODE_SENSOR){
			*nextSensor = node.num;
			break;     // found distance from sensor to sensor!
		}
		else if(node.type == NODE_MERGE) {
			edge = node.edge[DIR_AHEAD];
			distance += edge.dist;
		}
		else { // type == NODE_BRANCH
			edge = node.edge[DIR_STRAIGHT];
			if (track[path->path[searchPos-1].index].num != (edge.dest)->num)
			{	// Use the curved path's distance
				edge = node.edge[DIR_CURVED];
			}   // else use straight path
			distance += edge.dist;
		}
	}

	return distance;
}

// Find the distance from the landMark to next sensor along the path
int howFarFromDest( Path *path, int dest, int landMark, track_node *track, int *destIndex ) {
	int searchPos; // search from the beginning of the path
	for ( searchPos = path->startIndex; searchPos > 0; searchPos -= 1 ) {
		// found the current sensor in the path array, starting to find the next sensor along
		// the path
		if(path->path[searchPos].index == landMark) break; 
	}
	if(searchPos == 0) return 0;     // Dest, do not need the distance

	int totalDistance = 0;
	track_node node;

	// Search the next in the path

	for ( ; searchPos >= 0; searchPos -= 1 ) {
		if ( path->path[searchPos].index == dest ) {
			*destIndex = searchPos;
			break;
		}

		node = track[path->path[searchPos].index];

		if ( (node.edge[DIR_STRAIGHT].dest)->num == track[path->path[searchPos-1].index].num &&
			 (node.edge[DIR_STRAIGHT].dest)->type == track[path->path[searchPos-1].index].type ) {
			totalDistance += node.edge[DIR_AHEAD].dist;
		} else {
			totalDistance += node.edge[DIR_CURVED].dist;
		}
	}

	return totalDistance;
}

void getShortestPath(int router, int myAdmin, int startPos, int dest, Path*path, Dest *shortStop, int atFront, track_node *track ){
	ComReqStruct reqForPath, reqSetSwitch, reply;
	reqForPath.type  = REQUEST_OK;
	reqForPath.data1 = startPos;
	reqForPath.data2 = dest;
	// Ask for shortest path
	Send( router, (char *)&reqForPath, sizeof(ComReqStruct), (char *)path, sizeof(Path) );

	int c;
	// set switches along the path
	for ( c = path->startIndex; c > 0; c-- ) {
		// Search for "even" num switch. Because they are "brach". And set them.
		if ( path->path[c].index > 79 && path->path[c].index < 124 && (path->path[c].index % 2 == 0) ) {
			int pos;
			int cOrS;
			if ( path->path[c].index <= 114 ) {
				pos = ( path->path[c].index - 80 ) / 2 + 1;
			} else { // 3 digits switches
				pos = ( path->path[c].index - 116 ) / 2 + 153;
			}
			if ( path->path[c-1].curved == 1 ) {
				cOrS = 34;
			} else {
				cOrS = 33;
			}
			// Tell the admin to set the switch
			reqSetSwitch.type  = SWITCH_COMMAND;
			reqSetSwitch.data1 = cOrS;
			reqSetSwitch.data2 = pos;
			Send(myAdmin, (char *)&reqSetSwitch, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));
		}
		if ( path->path[c-1].reverse ) {
			shortStop->landMark = path->path[c].index;
			if ( atFront == 1 ) {
				shortStop->offset = 165;
			} else {
				shortStop->offset = 165;
			}
			path->path[c-1].reverse = 0;	// Don't reverse here again
			break;
		}
	}
}

void getPartialRoute( int myAdmin, Path*path, Dest *shortStop, int atFront, track_node *track ){
	ComReqStruct reqSetSwitch, reply;
	int c;
	// set switches along the path
	for ( c = path->startIndex; c > 0; c-- ) {
		// Search for "even" num switch. Because they are "brach". And set them.
		if ( path->path[c].index > 79 && path->path[c].index < 124 && (path->path[c].index % 2 == 0) ) {
			int pos;
			int cOrS;
			if ( path->path[c].index <= 114 ) {
				pos = ( path->path[c].index - 80 ) / 2 + 1;
			} else { // 3 digits switches
				pos = ( path->path[c].index - 116 ) / 2 + 153;
			}
			if ( path->path[c-1].curved == 1 ) {
				cOrS = 34;
			} else {
				cOrS = 33;
			}
			// Tell the admin to set the switch
			reqSetSwitch.type  = SWITCH_COMMAND;
			reqSetSwitch.data1 = cOrS;
			reqSetSwitch.data2 = pos;
			Send(myAdmin, (char *)&reqSetSwitch, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));
		}
		if ( path->path[c-1].reverse ) {
			shortStop->landMark = path->path[c].index;
			if ( atFront == 1 ) {
				shortStop->offset = 165;
			} else {
				shortStop->offset = 165;
			}
			path->path[c-1].reverse = 0;	// Don't reverse here again
			break;
		}
	}
}

void adjustPosition( int myAdmin, int clkServer, int reverseOrNot, int atFront, int dest, int train, int me, track_node *track ) {
	int printer = WhoIs( "printer" );

	ComReqStruct send, reply;
	send.type = SENSOR_QUERY;
	Send( printer, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	if ( reply.data1 == NOT_PASSED_SENSOR ) {
		send.type  = SUBSCRIBE;
		send.data1 = me;
		Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

		send.type = SPEED_NOPRINT;
		send.data1 = 1;
		send.data2 = train;
		Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

		int sender, sensor;
		FOREVER {
			Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );
			sensor = reply.data1;
			send.type = REQUEST_OK;
			Reply(sender, (char *)&send, sizeof(ComReqStruct));    // Unblock sender

			if ( sensor == dest ) {
				send.type = SPEED_NOPRINT;
				send.data1 = 0;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
				break;
			}
		}

		if ( reverseOrNot ) { 
			if ( atFront == 1 ) {
				send.type = SPEED_NOPRINT;
				send.data1 = 2;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				Delay(clkServer, ((double)(165 / 77)) * 100 + 140 );

				send.type = SPEED_NOPRINT;
				send.data1 = 0;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				Delay(clkServer, 150);
			} else {
				send.type = SPEED_NOPRINT;
				send.data1 = 2;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				Delay(clkServer, ((double)(50 / 77)) * 100 + 140 );

				send.type = SPEED_NOPRINT;
				send.data1 = 0;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				Delay(clkServer, 100);
			}
		} else {
			if ( atFront != 1 ) {
				send.type = SPEED_NOPRINT;
				send.data1 = 0xf;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				send.type = SPEED_NOPRINT;
				send.data1 = 2;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				Delay(clkServer, ((double)(140 / 77)) * 100 + 140 );

				send.type = SPEED_NOPRINT;
				send.data1 = 0;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				Delay(clkServer, 150);

				send.type = SPEED_NOPRINT;
				send.data1 = 0xf;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
			}
		}
	} else if ( reply.data1 == PASSED_SENSOR ) {
		if ( reverseOrNot ) return;

		send.type  = SUBSCRIBE;
		send.data1 = me;
		Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

		send.type = SPEED_NOPRINT;
		send.data1 = 0xf;
		send.data2 = train;
		Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

		send.type = SPEED_NOPRINT;
		send.data1 = 1;
		send.data2 = train;
		Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

		int sender, sensor;
		FOREVER {
			Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );
			sensor = reply.data1;
			send.type = REQUEST_OK;
			Reply(sender, (char *)&send, sizeof(ComReqStruct));    // Unblock sender

			if ( sensor == (track[dest].reverse)->num ) {
				send.type = SPEED_NOPRINT;
				send.data1 = 0;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
				break;
			}
		}

		if ( atFront == 1 ) {
			send.type = SPEED_NOPRINT;
			send.data1 = 2;
			send.data2 = train;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			Delay(clkServer, ((double)(50 / 77)) * 100 + 140 );

			send.type = SPEED_NOPRINT;
			send.data1 = 0;
			send.data2 = train;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			Delay(clkServer, 100);

			send.type = SPEED_NOPRINT;
			send.data1 = 0xf;
			send.data2 = train;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
		} else {
			send.type = SPEED_NOPRINT;
			send.data1 = 2;
			send.data2 = train;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			Delay(clkServer, ((double)(165 / 77)) * 100 + 140 );

			send.type = SPEED_NOPRINT;
			send.data1 = 0;
			send.data2 = train;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			Delay(clkServer, 100);

			send.type = SPEED_NOPRINT;
			send.data1 = 0xf;
			send.data2 = train;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
		}
	}
}

void trainDriver(){
	// Initialize
	track_node track[TRACK_MAX];
	init_tracka(track);
	RegisterAs( "driver" );
	int myAdmin = MyParentTid();
	int router  = WhoIs("route");
	int clkServer = WhoIs( "clock" );
	ComReqStruct send, reply;
	int sender;
	int me = MyTid();

	int straightVelocity[14];
	int curveVelocity[14];
	init_velocity(straightVelocity, curveVelocity);
	int stoppingTable[14];
	init_table(stoppingTable);
	int accelDistance[14];
	int accelTime[14];
	init_accelDistance(accelDistance, accelTime);

	// the starting position of the train.
	int startPos = -1;

	// Some flag variables...
	Dest shortStop;
	shortStop.landMark = -1;
	int atFront = 1;	// ALWAYS place train with pickup in the front
	int offset = 0;		// UPDATE THIS AFTER BEING REVERSED (having done a reverse command)
	int partialStop = 0;
	int destIndex = -1;
	int onlyOnce = 0;

	// Always wait for command
	FOREVER{

		Path path;
		int expectedTime = 0;       // The expected time to reach next sensor
		int updateTo = 0;           // 0 means update to straight, 1 to curved
		int lastDistance = 0;
		int lastLandMark = -1;
		int previousTime = 0;    // Time for last sensor triggered
		int curTime      = 0;    // Time for current sensor triggered

		// Wait for GOTO_COMMAND
		Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );

		int dest  = reply.data1;
		int speed = reply.data2;
		int train = reply.data3;
		send.type = REQUEST_OK;
		Reply( sender, (char *)&send, sizeof(ComReqStruct) );   // <--- unblocking terminal
				
		// subscribe in admin for sensor data. Trying to get the starting position
		send.type  = SUBSCRIBE;
		send.data1 = me;
		Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

		// Check if the train knows its current position
		// if not, wait for first sensor trigger
		if (startPos == -1)
		{
			// Move the train
			send.type  = GOTO_COMMAND;
			send.data1 = 1;      // Start with a slow speed, until triger a sensor        
			send.data2 = train;
			send.data3 = dest;
			Send(myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(reply));
			// Wait for sensor data;
			Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );

			lastLandMark = reply.data1;
			send.type = REQUEST_OK;
			Reply(sender, (char *)&send, sizeof(ComReqStruct));    // Unblock sender
			startPos = lastLandMark;
		}

		getShortestPath(router, myAdmin, startPos, dest, &path, &shortStop, atFront, track ); 

		GET_ROUTE:

		lastLandMark = startPos;

		if ( onlyOnce != 1 ) {
			if ( shortStop.landMark != -1 ) {
				int howFarFromDestination = howFarFromDest(&path, shortStop.landMark, lastLandMark, track, &destIndex);
				howFarFromDestination += shortStop.offset;

				// ComReqStruct fo, real;
				// 	//update the stat on the screen
				// 	fo.type  = DEBUG;
				// 	fo.data1 = lastLandMark;
				// 	fo.data2 = shortStop.landMark;
				// 	Send( myAdmin, (char *)&fo, sizeof(ComReqStruct), (char *)&real, sizeof(ComReqStruct) );
				
				if ( (accelDistance[speed-1] + stoppingTable[speed-1]) > howFarFromDestination ) {
					send.type  = UNSUBSCRIBE;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

					// Lets know that the driver wants to stop at some specified sensor
					send.type = MARK_SENSOR;
					send.data1 = shortStop.landMark;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

					int i;
					for ( i = (speed-1); i >= 0; i-- ) {
						if ( ( stoppingTable[i] + accelDistance[i] ) <= howFarFromDestination ) break;
					}
					int canRunFor = howFarFromDestination - (stoppingTable[i] + accelDistance[i]);

					ComReqStruct fo, real;
					//update the stat on the screen
					fo.type  = DEBUG;
					fo.data1 = howFarFromDestination;
					fo.data2 = offset;
					fo.data3 = i+1;
					Send( myAdmin, (char *)&fo, sizeof(ComReqStruct), (char *)&real, sizeof(ComReqStruct) );

					send.type  = SPEED_NOPRINT;
					send.data1 = i+1;
					send.data2 = train;
					Send( myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));

					send.type  = GOTO_NOSPEED;
					send.data1 = speed;
					send.data2 = train;
					send.data3 = dest;
					Send( myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));

					Delay(clkServer, ((double)(canRunFor / straightVelocity[i])) * 100 + accelTime[i] );

					send.type = SPEED_NOPRINT;
					send.data1 = 0;
					send.data2 = train;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

					Delay(clkServer, 300 );

					adjustPosition( myAdmin, clkServer, 1, atFront, shortStop.landMark, train, me, track );

					send.type = SPEED_NOPRINT;
					send.data1 = 0xf;
					send.data2 = train;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					
					// remember my current position for next GOTO command
					startPos = shortStop.landMark;

					if ( atFront == 1 ) {
						atFront = 0;
					} else {
						atFront = 1;
					}
					send.type  = SUBSCRIBE;
					send.data1 = me;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

					shortStop.landMark = -1;

					path.startIndex = destIndex;

					getPartialRoute( myAdmin, &path, &shortStop, atFront, track );	// Hardcore control flow

					goto GET_ROUTE;	// So sexy, dat control flow
				}
			} else {
				int howFarFromDestination = howFarFromDest(&path, dest, lastLandMark, track, &destIndex);


				if ( (accelDistance[speed-1] + stoppingTable[speed-1]) > howFarFromDestination ) {
					send.type  = UNSUBSCRIBE;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

					// Lets know that the driver wants to stop at some specified sensor
					send.type = MARK_SENSOR;
					send.data1 = dest;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );


					int i;
					for ( i = (speed-1); i >= 0; i-- ) {
						if ( ( stoppingTable[i] + accelDistance[i] ) <= howFarFromDestination ) break;
					}
					int canRunFor = howFarFromDestination - ( stoppingTable[i] + accelDistance[i] );

					ComReqStruct fo, real;
					//update the stat on the screen
					fo.type  = DEBUG;
					fo.data1 = howFarFromDestination;
					fo.data2 = offset;
					fo.data3 = i+1;
					Send( myAdmin, (char *)&fo, sizeof(ComReqStruct), (char *)&real, sizeof(ComReqStruct) );

					send.type  = SPEED_NOPRINT;
					send.data1 = i+1;
					send.data2 = train;
					Send( myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));

					send.type  = GOTO_NOSPEED;
					send.data1 = speed;
					send.data2 = train;
					send.data3 = dest;
					Send( myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));

					Delay(clkServer, ((double)(canRunFor / straightVelocity[i])) * 100 + accelTime[i] + 30 );

					send.type = SPEED_NOPRINT;
					send.data1 = 0;
					send.data2 = train;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					
					Delay(clkServer, 300 );

					adjustPosition( myAdmin, clkServer, 0, atFront, dest, train, me, track );

					// remember my current position for next GOTO command
					startPos = dest;

					continue;
				}
			}
		} else {
			onlyOnce = 0;
		}

		// Move the train
		send.type  = GOTO_COMMAND;
		send.data1 = speed;
		send.data2 = train;
		send.data3 = dest;
		Send( myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));

		int tempDest = dest;
		if ( shortStop.landMark != -1 ) tempDest = shortStop.landMark;

		// // Lets know that the driver wants to stop at some specified sensor
		send.type = MARK_SENSOR;
		send.data1 = tempDest;
		Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

		FOREVER{
			// calculate the time difference
			previousTime = curTime;
			curTime = Time(clkServer);

			int nextSensor;       // <---- use to decide which speed table to use.
			int nextSensorDistance = findNextDistance(&path, lastLandMark, track, &nextSensor);

			if (nextSensor == 2 || nextSensor == 3 || nextSensor == 30 || nextSensor == 31 || 
				nextSensor == 64 || nextSensor == 65 || nextSensor == 32 || nextSensor == 33 ||
				nextSensor == 28 || nextSensor == 29 || nextSensor == 48 || nextSensor == 49 ||
				nextSensor == 54 || nextSensor == 55 || nextSensor == 56 || nextSensor == 57 ||
				nextSensor == 36 || nextSensor == 37 || nextSensor == 74 || nextSensor == 75 ||
				nextSensor == 6 || nextSensor == 7   || nextSensor == 8 || nextSensor == 9 || 
				nextSensor == 10 || nextSensor == 11 || nextSensor == 12 || nextSensor == 13 || 
				nextSensor == 40 )
			{    // use curve speed for those estimation
				expectedTime = ((double)nextSensorDistance / (double)(curveVelocity[speed])) * (double)100;
				updateTo = 1;
			} else{
				expectedTime = ((double)nextSensorDistance / (double)(straightVelocity[speed])) * (double)100;
				updateTo = 0;
			}

			int locationInfo[4];  // <---- for demo, remove this later;
			locationInfo[0] = lastLandMark;
			// dynamic calibration
			if (lastDistance != 0)
			{
				int lastSpeed = lastDistance / ((double)(curTime - previousTime) / 100);
				if (updateTo) // to curve table
				{
					curveVelocity[speed] = 0.75 * (double)curveVelocity[speed] + 0.25 * (double)lastSpeed;
					locationInfo[1] = curveVelocity[speed];
				} else {
					straightVelocity[speed] = 0.75 * (double)straightVelocity[speed] + 0.25 * (double)lastSpeed;
					locationInfo[1] = straightVelocity[speed];
				}
			}
			lastDistance = nextSensorDistance;
			locationInfo[2] = curTime;
			send.type = TRAIN_POS;
			send.data1 = locationInfo;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			// check if we should slow down
			int howFarFromDestination = howFarFromDest(&path, tempDest, lastLandMark, track, &destIndex);

			if ( shortStop.landMark != -1 ) {
				howFarFromDestination += shortStop.offset;
			}

			ComReqStruct fo, real;
			//update the stat on the screen
			fo.type  = DEBUG;
			fo.data1 = howFarFromDestination;
			fo.data2 = offset;
			fo.data3 = speed;
			Send( myAdmin, (char *)&fo, sizeof(ComReqStruct), (char *)&real, sizeof(ComReqStruct) );

			// have to send out stop command before next sensor
			if ((howFarFromDestination - nextSensorDistance) <= stoppingTable[speed-1]) 
			{

			// //update the stat on the screen
			// send.type  = UPDATE_STAT;
			// send.data1 = howFarFromDestination;
			// send.data2 = nextSensorDistance;
			// // send.data1 = nextSensorDistance;
			// // send.data2 = howFarFromDestination;
			// send.data3 = stoppingTable[speed-1];
			// Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
				send.type  = UNSUBSCRIBE;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				int canRunFor = howFarFromDestination - stoppingTable[speed-1];


				ComReqStruct fo, real;
				//update the stat on the screen
				fo.type  = DEBUG;
				fo.data1 = howFarFromDestination;
				fo.data2 = offset;
				fo.data3 = speed;
				Send( myAdmin, (char *)&fo, sizeof(ComReqStruct), (char *)&real, sizeof(ComReqStruct) );

				if (updateTo)  // which velocity should be used for remaining
				{
					Delay(clkServer, ((double)(canRunFor / curveVelocity[speed])) * 100 + 30);
				} else {
					Delay(clkServer, ((double)(canRunFor / straightVelocity[speed])) * 100 + 30);
				}
				// send the stop command
				send.type = SPEED_NOPRINT;
				send.data1 = 0;
				send.data2 = train;
				Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

				
				// remember my current position for next GOTO command
				startPos = tempDest;

				Delay(clkServer, 300 );

				if ( shortStop.landMark != -1 ) {
					adjustPosition( myAdmin, clkServer, 1, atFront, tempDest, train, me, track );

					send.type = SPEED_NOPRINT;
					send.data1 = 0xf;
					send.data2 = train;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

					if ( atFront == 1 ) {
						atFront = 0;
					} else {
						atFront = 1;
					}
					send.type  = SUBSCRIBE;
					send.data1 = me;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

					shortStop.landMark = -1;

					expectedTime = 0;       // The expected time to reach next sensor
					updateTo = 0;           // 0 means update to straight, 1 to curved
					lastDistance = 0;
					previousTime = 0;    // Time for last sensor triggered
					curTime      = 0;    // Time for current sensor triggered

					path.startIndex = destIndex;

					getPartialRoute( myAdmin, &path, &shortStop, atFront, track );	// Hardcore control flow

					goto GET_ROUTE;	// So sexy, dat control flow
				} else {
					adjustPosition( myAdmin, clkServer, 0, atFront, tempDest, train, me, track );
				}

				break;
			}
			// Wait for sensor data;
			Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );
			// Putc(uart2XServer, COM2, 'a');
			lastLandMark = reply.data1;
			send.type = REQUEST_OK;
			Reply(sender, (char *)&send, sizeof(ComReqStruct));    // Unblock sender
			if (reply.type != REQUEST_OK) // prevent some strange case(user type too much command for driver)
			{
				continue;
			}

			// not the sensor that we expected, we need to recalculate for a new route
			// if (lastLandMark != nextSensor)
			// {	// Re-initialize the values
			// 	expectedTime = 0;       // The expected time to reach next sensor
			// 	updateTo = 0;           // 0 means update to straight, 1 to curved
			// 	lastDistance = 0;
			// 	previousTime = 0;    // Time for last sensor triggered
			// 	curTime      = 0;    // Time for current sensor triggered
			// 	startPos = lastLandMark;

			// 	getShortestPath(router, myAdmin, startPos, dest, &path, &shortStop, atFront );
			// 	goto GET_ROUTE;
			// }

		}

	}

}
