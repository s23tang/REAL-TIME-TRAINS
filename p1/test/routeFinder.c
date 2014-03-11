#include "wtA4.h"
#include "routeFinder.h"
#include "syscalls.h"
#include "track_data.h"
#include "io.h"
#include "nameServer.h"

// Pass the index in just to be consistent (for src and dest)
void route( track_node *track, Path *shortest, int src, int dest ) {
	int dist[TRACK_MAX];
	Loc prev[TRACK_MAX];
	int Q[TRACK_MAX];
	int num_left = TRACK_MAX;
	int i;
	for ( i = 0; i < TRACK_MAX; i++ ) {
		dist[i] = 99999;
		prev[i].index = -1;
		prev[i].curved = -1;
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
				// if ( !flag ) flag = v;
				dist[v] = alt;
				prev[v].index = lowestDist;
				prev[v].curved = i;
			}
		}
		// alt = dist[lowestDist];
		// type = track[lowestDist].reverse->type;
		// num = track[lowestDist].reverse->num;
		// if ( type == NODE_SENSOR ) {
		// 	v = num;
		// } else if ( type == NODE_BRANCH ) {
		// 	if ( num <= 18 ) v = 80 + (num-1)*2;
		// 	else v = 116 + (num-153)*2;
		// } else if ( type == NODE_MERGE ) {
		// 	if ( num <= 18 ) v = 81 + (num-1)*2;
		// 	else v = 117 + (num-153)*2;
		// }
		// if ( alt < dist[v] ) {
		// 	dist[v] = alt;
		// 	prev[v].index = lowestDist;
		// 	prev[v].curved = 0;
		// }
	}

	i = 0;
	int tar = dest;
	while ( tar != -1 ) {
		shortest->path[i].index = tar;
		shortest->path[i].curved = prev[tar].curved;
		tar = prev[tar].index;
		i++;
	}
	shortest->startIndex = i - 1;
	// shortest->startIndex = prev[101];
}

void routeFinder( ) {
	track_node track[TRACK_MAX];
	init_tracka(track);

	RegisterAs( "route" );

	// int printer = MyParentTid();
	ComReqStruct reply;
	int sender;

	FOREVER {
		Receive( &sender, (char *)&reply, sizeof(ComReqStruct) );

		int src  = reply.data1;	// No offset right now
		int dest = reply.data2;

		// Begin finding the shortest path from the src to the dest
		Path shortest;
		route( track, &shortest, src, dest );

		Reply( sender, (char *)&shortest, sizeof(Path) );
	}
}
