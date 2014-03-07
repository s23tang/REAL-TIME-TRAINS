#define IO_SIZE		5000

int Getc( int server, int channel );
int Putc( int server, int channel, char ch );
void uart2GetServer( );
void uart2PutServer( );
void uart1GetServer( );
void uart1PutServer( );
int setTrainConnectionn();

void putw( int server, int channel, int n, char fc, char *bf );
int a2d( char ch );
char a2i( char ch, char **src, int base, int *nump );
void ui2a( unsigned int num, unsigned int base, char *bf );
void i2a( int num, char *bf );
void format ( int server, int channel, char *fmt, char* va );
void myprintf( int server, int channel, char *fmt, ... );
