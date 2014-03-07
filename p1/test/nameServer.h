// Name Server macros
#define REGISTERAS		1
#define WHOIS			2
#define NAME_SERVER		2
#define NUM_SERVERS		5		// Clock Server, UART[1,2] Get/Xmit (4 servers) 

// Server index in database
#define CLK_INDEX		0 		// Clock Server
#define UART1GET_S		1		// UART 1 Get Server
#define UART1XMIT_S		2		// UART 1 Xmit Server
#define UART2GET_S		3		// UART 2 Get Server
#define UART2XMIT_S		4		// UART 2 Xmit Server

//#define RPS_INDEX		1 		// rps server index, for testing

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

int RegisterAs( char *name );
int WhoIs( char *name );
void nameServer();
