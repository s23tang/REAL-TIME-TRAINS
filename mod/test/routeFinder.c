#include "wtA4.h"
#include "routeFinder.h"
#include "syscalls.h"
#include "track_data.h"
#include "io.h"
#include "nameServer.h"
#include "trackMonitor.h"

void addPathToNextSensor( track_node *track, Path *shortest, int toLandMark, int *pathIndex ) {
	track_node *node = track[toLandMark].reverse;
	if ( node->type == NODE_SENSOR ) {
		shortest->path[(*pathIndex)-1].reverse = 1;
		return;
	}
	else {
		int prePath[10];	// Used to store the path before reverse
		int prePathIndex = 0;
		while ( node->type != NODE_SENSOR ) {
			node = (node->edge[DIR_AHEAD].reverse)->src;
			if ( node->type == NODE_SENSOR ) {
				shortest->path[*pathIndex].index =  node->num;
				shortest->path[*pathIndex].reverse = 1;
				(*pathIndex)++;
				// add path to reverse sensor
				shortest->path[*pathIndex].index = node->reverse->num;
				(*pathIndex)++;

				for ( prePathIndex = prePathIndex - 1 ; prePathIndex >= 0; prePathIndex -= 1 ) {
					shortest->path[*pathIndex].index = prePath[prePathIndex];
					shortest->path[*pathIndex].curved = 0;
					(*pathIndex)++;
				}
			} else {
				int index;
				int reverseIndex;
				int num = node->num;
				if ( node->type == NODE_MERGE ) {
					if ( num <= 18 ) index = 81 + (num-1)*2;
					else index = 117 + (num-153)*2;
					reverseIndex = index - 1;
				} else {
					if ( num <= 18 ) index = 80 + (num-1)*2;
					else index = 116 + (num-153)*2;
					reverseIndex = index + 1;
				}

				shortest->path[*pathIndex].index = index;
				shortest->path[*pathIndex].curved = 0;
				(*pathIndex)++;
				prePath[prePathIndex] = reverseIndex;
				prePathIndex++;

				node = node->reverse;
			}
		}
	}
}

// Pass the index in just to be consistent (for src and dest)
void route( track_node *track, Path *shortest, int src, int dest ) {
	int dist[TRACK_MAX];
	Loc prev[TRACK_MAX];
	int Q[TRACK_MAX];
	int num_left = TRACK_MAX;
	int i;
	for ( i = 0; i < 50; i++ ) {
		shortest->path[i].index = -1;
		shortest->path[i].curved = 0;
		shortest->path[i].reverse = 0;
	}

	for ( i = 0; i < TRACK_MAX; i++ ) {
		dist[i] = 99999;
		prev[i].index = -1;
		prev[i].curved = -1;
		prev[i].reverse = 0;
		Q[i] = 1;
	}
	dist[src] = 0;
	int lowestDist = src;

	while ( num_left != 0 ) {
		int smallest = 99999;
		for ( i = 0; i < TRACK_MAX; i++ ) {
			if ( Q[i] == 1 ) {
				if ( dist[i] < smallest ) {
					smallest = dist[i];
					lowestDist = i;
				}
			}
		}
		if ( lowestDist == dest ) break;
		Q[lowestDist] = -1;
		num_left--;
		int alt, v, num, count;
		node_type type;
		if ( track[lowestDist].type == NODE_BRANCH ) count = 2;
		else if ( track[lowestDist].type == NODE_EXIT || track[lowestDist].type == NODE_ENTER ) count = 0;
		else count = 1;
		for ( i = 0; i < count; i++ ) {
			if ( lowestDist == 110 && i == 1 ) break;
			if ( lowestDist == 122 && i == 0 ) continue;
			alt = dist[lowestDist] + track[lowestDist].edge[i].dist;
			type = track[lowestDist].edge[i].dest->type;
			num = track[lowestDist].edge[i].dest->num;
			if ( type == NODE_SENSOR ) {
				v = num;
			} else if ( type == NODE_BRANCH ) {
				if ( num <= 18 ) v = 80 + (num-1)*2;
				else v = 116 + (num-153)*2;
			} else if ( type == NODE_MERGE ) {
				if ( num <= 18 ) v = 81 + (num-1)*2;
				else v = 117 + (num-153)*2;
			} else if ( type == NODE_ENTER ) {
				v = lowestDist;
			} else if ( type == NODE_EXIT ) {
				v = lowestDist;
			}
			if ( alt < dist[v] ) {
				dist[v] = alt;
				prev[v].index = lowestDist;
				prev[v].curved = i;
			}
		}
		alt = dist[lowestDist];
		type = track[lowestDist].reverse->type;
		num = track[lowestDist].reverse->num;
		if ( type == NODE_SENSOR ) {
			v = num;
		} else if ( type == NODE_BRANCH ) {
			if ( num <= 18 ) v = 80 + (num-1)*2;
			else v = 116 + (num-153)*2;
		} else if ( type == NODE_MERGE ) {
			if ( num <= 18 ) v = 81 + (num-1)*2;
			else v = 117 + (num-153)*2;
		}
		if ( alt < dist[v] ) {
			dist[v] = alt;
			prev[v].index = lowestDist;
			prev[v].curved = 0;
			prev[v].reverse = 1;
		}
	}

	i = 0;
	int tar = dest;
	while ( tar != -1 ) {
		shortest->path[i].index = tar;
		shortest->path[i].curved = prev[tar].curved;
		i++;
		if ( prev[tar].reverse ) {
			addPathToNextSensor( track, shortest, tar, &i ); 	// Goto next sensor then reverse
		}
		tar = prev[tar].index;
	}
	shortest->startIndex = i - 1;
	// shortest->startIndex = prev[101];
}

void routeFinder( ) {
	track_node track[TRACK_MAX];
	init_tracka(track);

	RegisterAs( "route" );
	int myAdmin = MyParentTid();
	int monitor = WhoIs( "monitor" );

	// int printer = MyParentTid();
	ComReqStruct reply, reservation,send;
	int sender;
	int trains[2]; // first train use the first Path structure, second train use the second path
	trains[0] = 0;
	trains[1] = 0;
	Path paths[2];

	FOREVER {
		Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );

		int src  = reply.data1;	// No offset right now
		int dest = reply.data2;

		// Begin finding the shortest path from the src to the dest
		int i;
		if ( trains[0] == 0 || sender == trains[0] ) {
			trains[0] = sender;
			i = 0;
		} else if ( trains[1] == 0 || sender == trains[1] ) {
			trains[1] = sender;
			i = 1;
		}

		route( track, &paths[i], src, dest );

		// ComReqStruct fus, roh;
		// fus.type = UPDATE_STAT;
		// fus.data1 = (int *)&paths[i];
		// Send( MyParentTid(), (char *)&fus, sizeof(ComReqStruct), (char *)&roh, sizeof(ComReqStruct) );

		Reply( sender, (char *)&paths[i], sizeof(Path) );
	}
}
