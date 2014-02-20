
int Create( int priority, void (*code) ( ) );
int MyTid( );
int MyParentTid( );
void Pass ( );
void Exit ( );
int Send ( int tid, char *message, int mslen, char *reply, int rplen );
int Receive ( int *tid, char *message, int mslen );
int Reply ( int tid, char *reply, int rplen );
int AwaitEvent ( int EventType );

