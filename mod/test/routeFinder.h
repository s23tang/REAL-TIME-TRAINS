typedef struct {
	int index;
	char curved;
	char reverse;
} Loc;

typedef struct {
	Loc path[50];
	int startIndex;
} Path;

void routeFinder( );
