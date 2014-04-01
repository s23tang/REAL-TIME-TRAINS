#include "wtA4.h"
#include "trainDriver.h"
#include "syscalls.h"
#include "track_data.h"
#include "nameServer.h"
#include "routeFinder.h"
#include "clockServer.h"
#include "trackMonitor.h"
#include "io.h"

// void init_table(int *table){ // train 45
// 	table[0] = 0;
// 	table[1] = 63;
// 	table[2] = 135;
// 	table[3] = 215;	
// 	table[4] = 275; 
// 	table[5] = 350;
// 	table[6] = 425;
// 	table[7] = 485;
// 	table[8] = 535;
// 	table[9] = 595;
// 	table[10] = 680;
// 	table[11] = 750;
// 	table[12] = 805;
// 	table[13] = 810;
// }

void init_table(int *table){ // train 49
	table[0] = 0;
	table[1] = 65;  
	table[2] = 150;	
	table[3] = 220;	
	table[4] = 280; 
	table[5] = 360; 
	table[6] = 440; 
	table[7] = 480; 
	table[8] = 560; 
	table[9] = 640;	
	table[10] = 720; 
	table[11] = 760; 
	table[12] = 830; 
	table[13] = 830; 
}

void init_velocity(int *straightVelocity, int *curveVelocity){ // train 49
	straightVelocity[0]  = 9;
	straightVelocity[1]  = 80;
	straightVelocity[2]  = 140;
	straightVelocity[3]  = 185;
	straightVelocity[4]  = 237;
	straightVelocity[5]  = 285;
	straightVelocity[6]  = 355;
	straightVelocity[7]  = 393;	// unsure above here
	straightVelocity[8]  = 449;
	straightVelocity[9]  = 511;
	straightVelocity[10] = 561;
	straightVelocity[11] = 651;
	straightVelocity[12] = 663;
	straightVelocity[13] = 671;

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

// void init_velocity(int *straightVelocity, int *curveVelocity){ // train 45 
// 	straightVelocity[0]  = 9;
// 	straightVelocity[1]  = 74;
// 	straightVelocity[2]  = 126;
// 	straightVelocity[3]  = 174;
// 	straightVelocity[4]  = 228;
// 	straightVelocity[5]  = 288;
// 	straightVelocity[6]  = 352; // unsure above here
// 	straightVelocity[7]  = 377;
// 	straightVelocity[8]  = 424;
// 	straightVelocity[9]  = 463;
// 	straightVelocity[10] = 516;
// 	straightVelocity[11] = 557;
// 	straightVelocity[12] = 560;
// 	straightVelocity[13] = 585;

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

void getShortestPath(int router, int myAdmin, int startPos, int dest, Path*path){
	ComReqStruct reqForPath, reqSetSwitch, reply;
	reqForPath.type  = REQUEST_OK;
	reqForPath.data1 = startPos;
	reqForPath.data2 = dest;
	// Ask for shortest path
	Send( router, (char *)&reqForPath, sizeof(ComReqStruct), (char *)path, sizeof(Path) );
			
	// int c;
	// // set switches along the path
	// for ( c = path->startIndex; c > 0; c-- ) {
	// 	// Search for "even" num switch. Because they are "brach". And set them.
	// 	if ( path->path[c].index > 79 && path->path[c].index < 124 && (path->path[c].index % 2 == 0) ) {
	// 		int pos;
	// 		int cOrS;
	// 		if ( path->path[c].index <= 114 ) {
	// 			pos = ( path->path[c].index - 80 ) / 2 + 1;
	// 		} else { // 3 digits switches
	// 			pos = ( path->path[c].index - 116 ) / 2 + 153;
	// 		}
	// 		if ( path->path[c-1].curved == 1 ) {
	// 			cOrS = 34;
	// 		} else {
	// 			cOrS = 33;
	// 		}
	// 		// Tell the admin to set the switch
	// 		reqSetSwitch.type  = SWITCH_COMMAND;
	// 		reqSetSwitch.data1 = cOrS;
	// 		reqSetSwitch.data2 = pos;
	// 		Send(myAdmin, (char *)&reqSetSwitch, sizeof(ComReqStruct), (char*)&reply, sizeof(ComReqStruct));
	// 	}
	// }
}

// find the index of the current landmark on the path
int findIndexAlongPath(Path *path, int curLandmark){
	int i;
	for( i = 0; i <= path->startIndex; i++ ){
		if (path->path[i].index == curLandmark)
		{
			return i;
		}
	}
	return 0;
}


// reserve the edges along the path. the total distance of the edges must be greater than
// the stopping distance of current speed. 
// Also set the switches within the reserved edges
int reserveAndSetSwitches(int monitor, int myAdmin, Path *path, int curLandmark, track_node *track, int speed, int *stoppingTable, int me){
	Sensor targets[15];   // a place to hold the edges that I want to reserve
	Branch branches[15];   // branches that we need to set after reservation
	int numOfBranches = 0;
	int numOfTarget = 0;    // number of edges that I want to reserve.
	ComReqStruct send, reply, reqSetSwitch;

	int reservedDistance = 0;         // the total distance of the edges that we want to reserve
	int nextSensor;
	
	int count = 0;
	// int buffer = findNextDistance(path, curLandmark, track, &nextSensor);
	// while (reservedDistance <= stoppingTable[speed] + buffer){ // loop when we havent got enough edges
	while (count <= 2){ // loop when we havent got enough edges
		int nextDistance = findNextDistance(path, curLandmark, track, &nextSensor);
		// reservedDistance = reservedDistance + nextDistance;
			// count++;
			// send.type  = UPDATE_STAT;
			// send.data1 = me;
			// send.data2 = nextDistance;
			// Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
		while(curLandmark != nextSensor) { // add the edges that we want to reserve
			int index = findIndexAlongPath(path, curLandmark);
			if (track[curLandmark].type == NODE_BRANCH)
			{	// record the branches that we need to set
				branches[numOfBranches].index = curLandmark;
				branches[numOfBranches].nextLandmark = path->path[index-1].index;
				numOfBranches++;
			}
			if (track[curLandmark].type == NODE_SENSOR){
				targets[numOfTarget].index = curLandmark;
				targets[numOfTarget].reservedBy = me;
				numOfTarget++;
			}
			curLandmark = path->path[index-1].index;
		}
		count++;
		if (nextDistance == 0)  // in dest already
		{
			return 3;
		}
	}

	// send out the reserve request
	send.type = RESERVE_TRACK;
	send.data1 = targets;
	send.data2 = numOfTarget;
	send.data3 = branches;
	send.data4 = numOfBranches;
	Send( monitor, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

	// check the reply to see if reservation successed
	if (reply.type == REQUEST_OK)
	{	//set the switches
		int i;
		for(i = 0; i < numOfBranches; i++){
			int pos;
			int cOrS;
			if ( branches[i].index <= 114 ) {
				pos = ( branches[i].index - 80 ) / 2 + 1;
			} else { // 3 digits switches
				pos = ( branches[i].index - 116 ) / 2 + 153;
			}
			int next = findIndexAlongPath(path, branches[i].index) - 1;
			if ( path->path[next].curved == 1 ) {
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
	} else {
		// send the stop command
		return 0;
	}

	return 1;
}

void trainDriver(){
	// Initialize
	track_node track[TRACK_MAX];
	init_tracka(track);
	// RegisterAs( "driver" );
	int myAdmin = MyParentTid();
	int router  = WhoIs("route");
	int clkServer = WhoIs( "clock" );
	int monitor = WhoIs( "monitor" );
	ComReqStruct send, reply;
	int sender;
	int me = MyTid();

	int straightVelocity[14];
	int curveVelocity[14];
	init_velocity(straightVelocity, curveVelocity);
	int stoppingTable[14];
	init_table(stoppingTable);

	// the starting position of the train.
	int startPos = -1;
	// Always wait for command
	FOREVER{

		Path path;
		int expectedTime = 0;       // The expected time to reach next sensor
		int updateTo = 0;           // 0 means update to straight, 1 to curved
		int lastDistance = 0;
		int triggeredSensor = -1;
		int previousTime = 0;    // Time for last sensor triggered
		int curTime      = 0;    // Time for current sensor triggered

		// Wait for GOTO_COMMAND
		Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );

		int dest  = reply.data1;
		int speed = reply.data2;
		int train = reply.data3;
		send.type = REQUEST_OK;
		Reply( sender, (char *)&send, sizeof(ComReqStruct) );   // <--- unblocking terminal
				
		// subscribe in monitor for sensor data. Trying to get the starting position
		send.type  = SENSOR_SUBSCRIBE;
		send.data1 = -1; // not sure where i am. No guess for now
		send.data2 = -1;
		Send( monitor, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			// Check if the train knows its current position
		// if not, wait for first sensor trigger
		if (startPos == -1)
		{
			// Move the train
			send.type  = GOTO_COMMAND;
			send.data1 = speed;      // Start with a slow speed, until triger a sensor        
			send.data2 = train;
			send.data3 = dest;
			Send(myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(reply));

			// Wait for sensor data;
			Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );

			triggeredSensor = reply.data1;
			send.type = REQUEST_OK;
			Reply(sender, (char *)&send, sizeof(ComReqStruct));    // Unblock sender
			startPos = triggeredSensor;
		}

		GET_ROUTE:
		getShortestPath(router, myAdmin, startPos, dest, &path);   // get the shortest route

		// Move the train
		send.type  = GOTO_COMMAND;
		send.data1 = speed;
		send.data2 = train;
		send.data3 = dest;
		Send( myAdmin, (char*)&send, sizeof(ComReqStruct), (char*)&reply, sizeof(reply));

		triggeredSensor = startPos;
		
		int result = reserveAndSetSwitches(monitor, myAdmin, &path, triggeredSensor, track, speed, stoppingTable, me);
		if (result == 0) // fail to reserve
		{	// stop the train
			// send the stop command
			send.type = SPEED_COMMAND;
			send.data1 = 0;
			send.data2 = train;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
			
			// remember my current position for next GOTO command
			startPos = triggeredSensor;
			continue;
		}

		FOREVER{
			// calculate the time difference
			previousTime = curTime;
			curTime = Time(clkServer);

			// //update the stat on the screen
			// send.type  = UPDATE_STAT;
			// send.data1 = (curTime - previousTime) - expectedTime;
			// Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

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

			// tell the monitor about my next position
			send.type  = UPDATE_LOCATION;
			send.data1 = nextSensor; // not sure where i am. No guess for now
			send.data2 = expectedTime + curTime;
			Send( monitor, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			// int locationInfo[4];  // <---- for demo, remove this later;
			// locationInfo[0] = triggeredSensor;
			// dynamic calibration
			if (lastDistance != 0)
			{
				int lastSpeed = lastDistance / ((double)(curTime - previousTime) / 100);
				if (updateTo) // to curve table
				{
					curveVelocity[speed] = 0.75 * (double)curveVelocity[speed] + 0.25 * (double)lastSpeed;
					// locationInfo[1] = curveVelocity[speed];
				} else {
					straightVelocity[speed] = 0.75 * (double)straightVelocity[speed] + 0.25 * (double)lastSpeed;
					// locationInfo[1] = straightVelocity[speed];
				}
			}
			lastDistance = nextSensorDistance;
			// locationInfo[2] = curTime;
			// send.type = TRAIN_POS;
			// send.data1 = locationInfo;
			// Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

			// check if we should slow down
			int howFarFromDestination = howFarFromDest(&path, triggeredSensor, track);

			// have to send out stop command before next sensor
			if ((howFarFromDestination - nextSensorDistance) <= stoppingTable[speed-1]) 
			{

				send.type  = SENSOR_UNSUBSCRIBE;
				Send( monitor, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );

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
				
				// remember my current position for next GOTO command
				startPos = dest;
				break;
			}
			// Wait for sensor data;
			Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );
			// Putc(uart2XServer, COM2, 'a');
			triggeredSensor = reply.data1;
			send.type = REQUEST_OK;
			Reply(sender, (char *)&send, sizeof(ComReqStruct));    // Unblock sender
			if (reply.type != SENSOR_TRIGGERED) // prevent some strange case(user type too much command for driver)
			{
				continue;
				// break;
			}

			// not the sensor that we expected, we need to recalculate for a new route
			if (triggeredSensor != nextSensor)
			{	// Re-initialize the values
				expectedTime = 0;       // The expected time to reach next sensor
				updateTo = 0;           // 0 means update to straight, 1 to curved
				lastDistance = 0;
				previousTime = 0;    // Time for last sensor triggered
				curTime      = 0;    // Time for current sensor triggered
				startPos = triggeredSensor;
				// shoud also release the edges here!!!!!!!!!!!!!!
				goto GET_ROUTE;
			} else { // reserve the edges and set swtiches
				int result = reserveAndSetSwitches(monitor, myAdmin, &path, triggeredSensor, track, speed, stoppingTable, me);
				if (result == 0) // fail to reserve
				{	// stop the train
					// send the stop command
					send.type = SPEED_COMMAND;
					send.data1 = 0;
					send.data2 = train;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					
					// remember my current position for next GOTO command
					startPos = triggeredSensor;
					break;
				}
			}

		}

	}

}
