#include "wtA4.h"
#include "trainDriver.h"
#include "syscalls.h"
#include "track_data.h"
#include "nameServer.h"
#include "routeFinder.h"
#include "clockServer.h"
#include "io.h"

void init_table(int *table){
	table[0] = 0;
	table[1] = 66;
	table[2] = 147;
	table[3] = 217;
	table[4] = 289;
	table[5] = 343;
	table[6] = 439;
	table[7] = 430;
	table[8] = 576;
	table[9] = 619;
	table[10] = 711;
	table[11] = 780;
	table[12] = 830;
	table[13] = 830;
}

void init_velocity(int *straightVelocity, int *curveVelocity){
	straightVelocity[0]  = 9;
	straightVelocity[1]  = 80;
	straightVelocity[2]  = 140;
	straightVelocity[3]  = 185;
	straightVelocity[4]  = 237;
	straightVelocity[5]  = 285;
	straightVelocity[6]  = 355;
	straightVelocity[7]  = 420;
	straightVelocity[8]  = 480;
	straightVelocity[9]  = 560;
	straightVelocity[10] = 612;
	straightVelocity[11] = 680;
	straightVelocity[12] = 758;
	straightVelocity[13] = 760;

	curveVelocity[0]  = 9;
	curveVelocity[1]  = 61;
	curveVelocity[2]  = 108;
	curveVelocity[3]  = 143;
	curveVelocity[4]  = 179;
	curveVelocity[5]  = 215;
	curveVelocity[6]  = 240;
	curveVelocity[7]  = 297;
	curveVelocity[8]  = 350;
	curveVelocity[9]  = 379;
	curveVelocity[10] = 435;
	curveVelocity[11] = 463;
	curveVelocity[12] = 489;
	curveVelocity[13] = 498;
}

// Find the distance from the curSensor to next sensor along the path
int findNextDistance(Path* path, int curSensor, track_node* track, int *nextSensor){
	int searchPos = path->startIndex;    // we'll search from the beginning of the path
	for (; searchPos > 0; searchPos--)
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

// Find the distance from the curSensor to next sensor along the path
int howFarFromDest(Path* path, int curSensor, track_node* track){
	int searchPos = path->startIndex;    // we'll search from the beginning of the path
	for (; searchPos > 0; searchPos--)
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

	for( ;searchPos > 0; searchPos--){
		node = track[path->path[searchPos].index];
		if(node.type == NODE_SENSOR){
			edge = node.edge[DIR_AHEAD];
			distance += edge.dist;
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

	int previousTime = 0;    // Time for last sensor triggered
	int curTime      = 0;    // Time for current sensor triggered


	int straightVelocity[14];
	int curveVelocity[14];
	init_velocity(straightVelocity, curveVelocity);
	int stoppingTable[14];
	init_table(stoppingTable);

	// Always wait for command
	FOREVER{

	Path path;
	int startPos = -1;
	int expectedTime = 0;       // The expected time to reach next sensor
	int updateTo = 0;           // 0 means update to straight, 1 to curved
	int lastDistance = 0;
	// Wait for GOTO_COMMAND
	Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );

	int dest  = reply.data1;
	int speed = reply.data2;
	int train = reply.data3;
	send.type = REQUEST_OK;
	Reply( sender, (char *)&send, sizeof(ComReqStruct) );   // <--- unblocking terminal
			
	// subscribe in printer for sensor data. Trying to get the starting position
	send.type  = SUBSCRIBE;
	send.data1 = me;
	Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	// Move the train
	send.type  = GOTO_COMMAND;
	send.data1 = speed;
	send.data2 = train;
	send.data3 = dest;
	Send( myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(reply));

	FOREVER{
		// Wait for sensor data;
		Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );
		// Putc(uart2XServer, COM2, 'a');
		int triggeredSensor = reply.data1;
		send.type = REQUEST_OK;
		Reply(sender, (char *)&send, sizeof(ComReqStruct));    // Unblock sender
		if (reply.type != REQUEST_OK) // prevent some strange case(user type too much command for driver)
		{
			continue;
		}

		// Reach dest! Un-subscribe for sensor data!!!
		// if (triggeredSensor == dest)
		// {

		// }

		// calculate the time difference
		previousTime = curTime;
		curTime = Time(clkServer);
	
		if (startPos == -1) //First time got sensor data. Use it as startPos
		{
			startPos = triggeredSensor;

			ComReqStruct reqForPath, reqSetSwitch;
			reqForPath.type  = REQUEST_OK;
			reqForPath.data1 = startPos;
			reqForPath.data2 = dest;
			// Ask for shortest path
			Send( router, (char *)&reqForPath, sizeof(ComReqStruct), (char *)&path, sizeof(Path) );
			
			int c;
			// set switches along the path
			for ( c = path.startIndex; c > 0; c-- ) {
				// Search for "even" num switch. Because they are "brach". And set them.
				if ( path.path[c].index > 79 && path.path[c].index < 124 && (path.path[c].index % 2 == 0) ) {
					int pos;
					int cOrS;
					if ( path.path[c].index <= 114 ) {
						pos = ( path.path[c].index - 80 ) / 2 + 1;
					} else { // 3 digits switches
						pos = ( path.path[c].index - 116 ) / 2 + 153;
					}
					if ( path.path[c-1].curved == 1 ) {
						cOrS = 34;
					} else {
						cOrS = 33;
					}
					// Tell the printer to set the switch
					reqSetSwitch.type  = SWITCH_COMMAND;
					reqSetSwitch.data1 = cOrS;
					reqSetSwitch.data2 = pos;
					Send(myAdmin, (char *)&reqSetSwitch, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));
				}
			}
		}

		//update the stat on the screen
		send.type  = UPDATE_STAT;
		send.data1 = curTime - previousTime;
		send.data2 = expectedTime;
		Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

		int nextSensor;       // <---- use to decide which speed table to use.
		int nextSensorDistance = findNextDistance(&path, triggeredSensor, track, &nextSensor);
		if (nextSensor == 2 || nextSensor == 3 || nextSensor == 30 || nextSensor == 31 || 
			nextSensor == 64 || nextSensor == 65 || nextSensor == 32 || nextSensor == 33 ||
			nextSensor == 28 || nextSensor == 29 || nextSensor == 48 || nextSensor == 49 ||
			nextSensor == 54 || nextSensor == 55 || nextSensor == 56 || nextSensor == 57 ||
			nextSensor == 36 || nextSensor == 37 || nextSensor == 74 || nextSensor == 75 ||
			nextSensor == 6 || nextSensor == 7   || nextSensor == 8 || nextSensor == 9 || 
			nextSensor == 10 || nextSensor == 11 || nextSensor == 12 || nextSensor == 13)
		{    // use curve speed for those estimation
			expectedTime = ((double)nextSensorDistance / (double)(curveVelocity[speed])) * (double)100;
			updateTo = 1;
		} else{
			expectedTime = ((double)nextSensorDistance / (double)(straightVelocity[speed])) * (double)100;
			updateTo = 0;
		}

		int locationInfo[4];  // <---- for demo, remove this later;
		locationInfo[0] = triggeredSensor;
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
		int howFarFromDestination = howFarFromDest(&path, triggeredSensor, track);
		// have to send out stop command before next sensor
		if ((howFarFromDestination - nextSensorDistance) <= stoppingTable[speed-1]) 
		{
			int canRunFor = howFarFromDestination - stoppingTable[speed-1];
			// if (dest == 11)
			// {
			// 	canRunFor += 200;
			// }
			if (updateTo)  // which velocity should be used for remaining
			{
				Delay(clkServer, ((double)(canRunFor / curveVelocity[speed])) * 100 + 33 );
			} else {
				Delay(clkServer, ((double)(canRunFor / straightVelocity[speed])) * 100 + 33 );
			}
			// send the stop command
			send.type = SPEED_COMMAND;
			send.data1 = 0;
			send.data2 = train;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			send.type  = UNSUBSCRIBE;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
			break;
		}


	}

	}

}
