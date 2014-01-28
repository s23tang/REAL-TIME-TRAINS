#define FOREVER 		for( ; ; )
#define PSR_USR			0x60000010
#define LOAD_LOC		0x00218000
#define MEM_END			0x01fdd000
#define MEM_START		0x00044f88
#define CREATE 			1
#define MYTID 			2
#define MYPARENTTID 	3
#define PASS 			4
#define EXIT 			5
#define SEND            6
#define RECEIVE         7
#define REPLY           8

struct TD;

/*
 *	Task descriptor structure
 */
typedef struct {
	int *sp;
	int spsr;
	int retVal;
	int priority;
	enum { ACTIVE, READY, SND_BLOCKED, RCV_BLOCKED, RPL_BLOCKED, ZOMBIE } state;
	unsigned int tid;
	unsigned int parentTid;
	void *rcvAddr;
	int rcvLen;
	char *msgToSend;
	int msgLen;
	int *senderTid;
	struct TD *nextSender;
	struct TD *lastSender;
	struct TD *nextTask;
} TD;

/*
 *	A simple queue of a linked list of TD's
 */
typedef struct{
	TD *headOfQueue;
	TD *tailOfQueue;
} Queue;

/*
 *	Request structure, initialized in main and
 *	passed around
 */
typedef struct {
	int arg0;
	int arg1;
	int arg2;
	int arg3;
	int arg4;
	unsigned int type;
	unsigned int freeIndex;
	unsigned int taskPriority;
	TD *tds;
	Queue *priorityQueues;
} Request;

