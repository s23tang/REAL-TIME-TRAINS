#include <bwio.h>
#include <ts7200.h>

// General Response
#define REQUEST_OK		0
#define REQUEST_BAD		-1

// Clock Server Macros
#define NOTI_REQ		1
#define TIME_REQ		2
#define DELAY_REQ		3
// Uart Server Macros
#define UART1XMIT_REQ		4
#define UART1GET_REQ		5
#define UART2XMIT_REQ		6
#define UART2GET_REQ		7
#define MSI_REQ             8

// UART Macros
#define UART1IntDIntClr 0x808C001C
#define UART2IntDIntClr	0x808D001C
#define UART1Flag       0x808C0018
#define UART2Flag       0x808D0018

// Communication Macros
#define NUM_OFFSET			48
#define MAX_INPUT			60
#define PRINT_CHAR			1
#define BAD_INPUT			2
#define TIME_UPDATE			3
#define BACKSPACE			4
#define QUIT_COMMAND		5
#define SPEED_COMMAND		6


struct TD;

/*
 *	Common request structure to communicate between notifier, server, and clients
 */
typedef struct {
	int type;
	int data1;
	int data2;
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
