// Name Server macros
#define REGISTERAS		1
#define WHOIS			2
#define NAME_SERVER		2
#define NUM_SERVERS		2		// rps server, clock server
#define CLK_INDEX		0 		// clock server index

//#define RPS_INDEX		1 		// rps server index, for testing

// Name Server database entry size
#define RPS_SIZE		4		// rps server
#define CLK_SIZE		6		// clock server

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
