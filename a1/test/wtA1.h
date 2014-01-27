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
	unsigned int type;
	unsigned int freeIndex;
	unsigned int taskPriority;
	TD *tds;
	Queue *priorityQueues;
} Request;
