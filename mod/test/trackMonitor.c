#include "wtA4.h"
#include "trainDriver.h"
#include "syscalls.h"
#include "track_data.h"
#include "nameServer.h"
#include "routeFinder.h"
#include "io.h"
#include "trackMonitor.h"

// find the index of a landmark on the track
int findIndex(track_node *track, track_node* landmark){
	int i;
	for( i = 0; i < TRACK_MAX; i++ ){
		if (track[i].name == landmark->name)
		{
			return i;
		}
	}
	return 0; 
}

void initSensors(track_node *track, Sensor *sensors, int *numOfSensors){
	int i;
	for(i = 0; i < 100; i++){
		if (track[i].type == NODE_SENSOR)
		{
			sensors[*numOfSensors].index = track[i].num;
			sensors[*numOfSensors].reserved = 0;
			sensors[*numOfSensors].reservedBy = -1;
			(*numOfSensors)++;
		}
	}
	// for (i = 0; i < TRACK_MAX; i++)
	// {
	// 	int j;
	// 	int found = 0;    // flag variable indicate if the edge is created.
	// 	track_node curNode = track[i];
	// 	track_edge curEdge, curve;
	// 	int startIndex1;
	// 	int endIndex1;
	// 	int startIndex2;
	// 	int endIndex2;
	// 	if (curNode.type != NODE_EXIT)   // NODE_EXIT has no edge ahead
	// 	{
	// 		// get the edge in "AHEAD" direction of curNode
	// 		curEdge = curNode.edge[0];     // 0 means ahead/straight direction
	// 		curve = curNode.edge[1];
	// 		startIndex1 = findIndex(track, curEdge.src);
	// 		endIndex1 = findIndex(track, curEdge.dest);

	// 		edges[*numOfEdges].start = startIndex1;
	// 		edges[*numOfEdges].end = endIndex1;
	// 		edges[*numOfEdges].reserved = 0;
	// 		edges[*numOfEdges].reservedBy = -1;
	// 		edges[*numOfEdges].len = curEdge.dist;
	// 		(*numOfEdges)++;

	// 		if (curNode.type == NODE_BRANCH)
	// 		{
	// 			startIndex2 = findIndex(track, curve.src);
	// 			endIndex2 = findIndex(track, curve.dest);
	// 			edges[*numOfEdges].start = startIndex2;
	// 			edges[*numOfEdges].end = endIndex2;
	// 			edges[*numOfEdges].reserved = 0;
	// 			edges[*numOfEdges].reservedBy = -1;
	// 			edges[*numOfEdges].len = curve.dist;
	// 			(*numOfEdges)++;
	// 		}

	// 		// for (j = 0; j < (*numOfEdges); j++)
	// 		// {
	// 		// 	if (startIndex1 == edges[j].start && endIndex1 == edges[j].end)
	// 		// 	{
	// 		// 		// found edge
	// 		// 		found = 1;
	// 		// 		break;
	// 		// 	}
	// 		// }
	// 	}

	// 	// if (!found && curNode.type != NODE_EXIT)   // not found, add the edge
	// 	// {
	// 	// 	edges[*numOfEdges].start = startIndex1;
	// 	// 	edges[*numOfEdges].end = endIndex1;
	// 	// 	edges[*numOfEdges].reserved = 0;
	// 	// 	edges[*numOfEdges].reservedBy = -1;
	// 	// 	edges[*numOfEdges].len = curEdge.dist;
	// 	// 	(*numOfEdges)++;
	// 	// }
	// }
}

// check if an edge is reserved and not reserved by the sender
int checkReserved(int index, Sensor* sensors, int sender, track_node* track){
	int i;
	// find the reverse side of the sensor and see if it's reserved
	track_node *reverse = track[index].reverse;
	if (sensors[reverse->num].reserved == 1)
	{
		return 1;
	}	
	// for (i = 0; i < 100; i++)
	// {
	// 	if (sensors[i].index == index && sensors[i].reserved == 1 &&sensors[i].reservedBy != sender)
	// 	{
	// 		return 1;
	// 	}
	// }
	return 0;
}

// release all the landmark reserved by me
void releaseAllMyReservation(int sender, Sensor *sensors){
	int i;
	for (i = 0; i < 100; i++)
	{
		if (sensors[i].reservedBy == sender && sensors[i].reserved == 1)
		{
			sensors[i].reserved = 0;
			sensors[i].reservedBy = -1;
		}
	}
}

// reserve the edge
void reserveSensor(int index, Sensor *sensors, int sender){
	int i;
	for (i = 0; i < 100; i++)
	{
		if (sensors[i].index == index)
		{
			sensors[i].reserved = 1;
			sensors[i].reservedBy = sender;
		}
	}
}

void trackMonitor(){
	// initialize
	track_node track[TRACK_MAX];
	Sensor sensors[100];
	// int reservedEdge[200];
	int numOfReserved = 0;
	int numOfSensors = 0;
	// tids for train drivers. I assume we only have two trains
	int trains[2];
	trains[0] = 0;
	trains[1] = 0;
	Path paths[2];
	int expectedSensor[2];
	int expectedTime[2];

	init_tracka(track);
	RegisterAs( "monitor" );
	int clkServer = WhoIs( "clock" );
	int me = MyTid();
	int myAdmin = MyParentTid();

	ComReqStruct send, reply;
	int sender;

	initSensors(track, sensors, &numOfSensors);

	FOREVER {
		Receive( &sender, (char*)&send, sizeof(ComReqStruct));
		switch(send.type) {
			case SENSOR_SUBSCRIBE:
				{ // trainDriver subscribe here for sensor trigger
					if(trains[0] == 0 || sender == trains[0]) {
						// no trains has subscribe yet
						trains[0] = sender; // subscribe the train driver
						expectedSensor[0] = send.data1;
						expectedTime[0] = send.data2;
					} else if(trains[1] == 0 || sender == trains[1]){
						trains[1] = sender;
						expectedSensor[1] = send.data1;
						expectedTime[1] = send.data2;
					}
					// subscribe to the printer for sensor trigger
					send.type  = SUBSCRIBE;
					send.data1 = me;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					reply.type = REQUEST_OK;
				}
				break;
			case UPDATE_LOCATION:
				{
					if(sender == trains[0]) {
						expectedSensor[0] = send.data1;
						expectedTime[0] = send.data2;
					} else if(sender == trains[1]){
						expectedSensor[1] = send.data1;
						expectedTime[1] = send.data2;
					} 
					reply.type = REQUEST_OK;
				}
				break;
			case SENSOR_TRIGGERED:
				{
					int triggeredSensor = send.data1;
					int curTime = Time(clkServer);
					// find out who should I send the trigger data to
					if (expectedSensor[0] == triggeredSensor && expectedTime[0] >= curTime - 200 && expectedTime[0] <= curTime + 200)
					{
						Send( trains[0], (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					} else if(expectedSensor[1] == triggeredSensor && expectedTime[1] >= curTime - 200 && expectedTime[1] <= curTime + 200) {
						Send( trains[1], (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					}else if (trains[0] != 0 && expectedSensor[0] == -1)  // subscribed and not yet received
					{
						Send( trains[0], (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					} else if (trains[1] != 0 && expectedSensor[1] == -1){
						Send( trains[1], (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					} 
					reply.type = REQUEST_OK;
					// some one go to the wrong place
					// NEED TO IMPLEMENT HERE!!!!!!
					// my basic idea is: see if any trainDriver has waited longer than it expected
				}
				break;
			case SENSOR_UNSUBSCRIBE:
				{
					if(trains[0] == 0 || sender == trains[0]) {
						// no trains has unsubscribe yet
						trains[0] = 0; // unsubscribe the train driver
						expectedSensor[0] = -1;
						expectedTime[0] = -1;
					} else if(trains[1] == 0 || sender == trains[1]){
						trains[1] = 0;
						expectedSensor[1] = -1;
						expectedTime[1] = -1;
					}
					send.type  = SENSOR_UNSUBSCRIBE;
					Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					reply.type = REQUEST_OK;
				}
				break;
			case RESERVE_TRACK:
				{
					Sensor *requestSensors = (Sensor *)send.data1;
					int numOfRequest = send.data2;
					// make sure we can allocate all the edges to the driver
					int i;
					int foundReserved = 0;
			send.type  = UPDATE_STAT;
			send.data1 = requestSensors;
			send.data2 = numOfRequest;
			send.data3 = sender;
			Send( myAdmin, (char *)&send, sizeof(ComReqStruct), (char *)&reply, sizeof(ComReqStruct) );
					for( i = 0; i < numOfRequest; i++) {
						if (checkReserved(requestSensors[i].index, sensors,requestSensors[i].reservedBy, track))
						{	// reserved by someone else
							foundReserved = 1;
							break;
						}
					}
					if (foundReserved == 1)
					{
						reply.type = REQUEST_BAD;
					} else {
						// release all previous reserved landmarks
						releaseAllMyReservation(requestSensors[i].reservedBy, sensors);
						for( i = 0; i < numOfRequest; i++) {
							reserveSensor(requestSensors[i].index, sensors, requestSensors[i].reservedBy);
						}
						reply.type = REQUEST_OK;
					}
				}
				break; 
		}
		Reply(sender, (char *)&reply, sizeof(ComReqStruct));
	}

}