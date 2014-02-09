// Kernel Primitive Macros
#define FOREVER 		for( ; ; )
#define PSR_USR			0x60000010
#define LOAD_LOC		0x00218000
#define MEM_END			0x01fdd000
#define MEM_START		0x00044f88
#define VIC1			0x800B0000
#define VIC2			0x800C0000
#define HWINTERRUPT		0
#define CREATE 			1
#define MYTID 			2
#define MYPARENTTID 	3
#define PASS 			4
#define EXIT 			5
#define SEND            6
#define RECEIVE         7
#define REPLY           8
#define AWAIT_EVENT     9

// Name Server macros
#define REGISTERAS		1
#define WHOIS			2
#define NAME_SERVER		2
#define NUM_SERVERS		2		// rps server, clock server
#define REQUEST_OK		0
#define REQUEST_BAD		-1
#define RPS_INDEX		0 		// rps server index
#define CLK_INDEX		1 		// clock server index

// Name Server database entry size
#define RPS_SIZE		4		// rps server
#define CLK_SIZE		6		// clock server

// RPS server macros
#define SIGN_UP			1
#define PLAY			2
#define QUIT			3
#define WIN				1
#define LOSE			2
#define TIE 			3
#define LEAVER			4
#define ROCK 			0
#define PAPER			1
#define SCISSORS		2
#define NONE			3
#define LEFT			4

// Timer Macros
#define TIME_LOAD    	0x80810080
#define TIME_CLR		0x8081008C
#define TIME_VAL     	0x80810084
#define TIME_CTRL    	0x80810088
#define FREQ_BIT     	0x8
#define ENABLE_BIT   	0x80

// Clock Server Macros
#define NOTI_REQ		1
#define TIME_REQ		2
#define DELAY_REQ		3
#define ONE_TICK 		5080

// Event type
#define CLOCK           0

// Notifiers
#define NUM_NOTIFIERS	1

struct TD;
struct DelayedTask;

/*
 *	Task descriptor structure
 */
typedef struct {
	int *sp;
	int spsr;
	int retVal;
	int priority;
	enum { ACTIVE, READY, SND_BLOCKED, RCV_BLOCKED, RPL_BLOCKED, AWAIT_BLOCKED, ZOMBIE } state;
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

/*
 *	Structure used to communicate with rock paper scissors server
 */
typedef struct {
	int type;
	int move;
} RPSstruct;

/*
 *	RPS server maintains array of this to track matching of players
 */
typedef struct {
	int againstTid;
	int move;
} Player;

/*
 *	Structure used to communicate with name server
 */
typedef struct {
	int type;
	char *name;
					// \000 terminated, currently accepts:
					// <rps> only (no brackets) as legal server name
	unsigned int tid;
} NSstruct;

/*
 *	Name server maintains array of this to track registered servers
 */
typedef struct {
	char *name;
	unsigned int tid;
} ServerEntry;

/*
 *	Common request structure to communicate between notifier, server, and clients
 */
typedef struct {
	int type;
	int data1;
} ComReqStruct;

/*
 *	Clock server's suspended task structures, to be used in a linked list (sorted)
 */
typedef struct {
	unsigned int ticks;
	unsigned int tid;
	struct DelayedTask *next;
} DelayedTask;

/*
 * A structure that stores the data for a notifier
 */
typedef struct {
	TD *task;
	int data;            // the volitile data from last event
	int eventWaiting;    // indicate if there is an event is waiting
} Notifier;
