struct TD;

/*
 *	Task descriptor structure
 */
typedef struct {
	int *sp;
	int spsr;
	int retVal;
	enum { ACTIVE, READY, BLOCKED, ZOMBIE } state;
	unsigned int tid;
	unsigned int parentTid;
	struct TD *nextTask;
} TD;

/*
 *	A simple queue of a linked list of TD's
 */
typedef struct{
	TD *headOfQueue;
	TD *tailOfQueue;
} Queues;

/*
 *	Request structure, initialized in main and
 *	passed around
 */
typedef struct {
	int arg0;
	int arg1;
	int arg2;
	int arg3;
	unsigned int type;
	unsigned int freeIndex;
	unsigned int taskPriority;
	TD *tds;
	Queues *priorityQueues;
} Request;
