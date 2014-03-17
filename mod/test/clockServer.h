// Request Types are defined in wtA4.h since common to notifier and server

struct DelayedTask;	// Forward Declaration

/*
 *	Clock server's suspended task structures, to be used in a linked list (sorted)
 */
typedef struct {
	unsigned int ticks;
	unsigned int tid;
	struct DelayedTask *next;
} DelayedTask;

int Time( int clkServer );
int Delay( unsigned int clkServer, int ticks );
int DelayUntil( unsigned int clkServer, int ticks );
void clockServer( );
