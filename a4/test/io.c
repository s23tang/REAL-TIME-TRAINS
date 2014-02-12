#include "io.h"
#include "wtA4.h"

//-----------------------------------------------------------------------------------------------
//	Wait until able to read a character from the given UART
//-----------------------------------------------------------------------------------------------
int getc( int channel ) {
	int *flags, *data;
	unsigned char c;

	switch( channel ) {
	case COM1:
		flags = (int *)( UART1_BASE + UART_FLAG_OFFSET );
		data = (int *)( UART1_BASE + UART_DATA_OFFSET );
		break;
	case COM2:
		flags = (int *)( UART2_BASE + UART_FLAG_OFFSET );
		data = (int *)( UART2_BASE + UART_DATA_OFFSET );
		break;
	default:
		return -1;
		break;
	}
	while ( ( *flags & RXFE_MASK ) );		// modified to spin on empty
	c = *data;
	return c;
} // getc
