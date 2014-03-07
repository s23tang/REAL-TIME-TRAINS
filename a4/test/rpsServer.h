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

void rpsServer();
