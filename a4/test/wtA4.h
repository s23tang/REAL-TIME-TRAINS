#include <bwio.h>
#include <ts7200.h>

// General Response
#define REQUEST_OK		0
#define REQUEST_BAD		-1

// Clock Server Macros
#define NOTI_REQ		1
#define TIME_REQ		2
#define DELAY_REQ		3

struct TD;

/*
 *	Common request structure to communicate between notifier, server, and clients
 */
typedef struct {
	int type;
	int data1;
} ComReqStruct;

/*
 * A structure that stores the data for a notifier
 */
typedef struct {
	struct TD *task;
	int data;            // the volitile data from last event
	int eventWaiting;    // indicate if there is an event is waiting
} Notifier;

/*
 *	Communication between First User Task and other tasks for A3
 */

typedef struct {
	int interval;
	int iteration;
} DelayInfo;
