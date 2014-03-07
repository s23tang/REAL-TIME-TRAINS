// Event type
#define CLOCK           0
#define UART1XMIT		1
#define UART1GET		2
#define UART2XMIT		3
#define UART2GET		4
#define MSI             5

// UART Macros
#define UART1CTRL		0x808C0014
#define UART2CTRL		0x808D0014

// Timer Macros
#define TIME_LOAD    	0x80810080
#define TIME_CLR		0x8081008C
#define TIME_VAL     	0x80810084
#define TIME_CTRL    	0x80810088
#define FREQ_BIT     	0x8
#define ENABLE_BIT   	0x80
#define ONE_TICK 		5080

// Interrupt Controller
#define VIC1			0x800B0000
#define VIC2			0x800C0000

// VIC Flag Bits
#define VIC_CLK			0x00080000

// Notifiers
#define NUM_NOTIFIERS	10

void notifier( );
