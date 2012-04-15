/*
 *  The Ad-Flier! - Communications Source File
 *  Team SkyLights, Senior Design, Spring 2012
 */


// Includes
#include "Communications.h"


// Initialize all Applicable UART Channels
void initializeUART(void) {
    
    // Initialize UART1 - U1A - XBee
    UARTConfigure(UART1, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART1, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetDataRate(UART1, PBUS_FREQ, UART1_FREQ);
    UARTSetLineControl(UART1, UART_DATA_SIZE_8_BITS|UART_PARITY_NONE|UART_STOP_BITS_1);
    UARTEnable(UART1, UART_PERIPHERAL | UART_ENABLE | UART_RX | UART_TX);

    // Initialize UART2 - U3A - GPS (NMEA)
    UARTConfigure(UART2, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART2, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetDataRate(UART2, PBUS_FREQ, UART2_FREQ);
    UARTSetLineControl(UART2, UART_DATA_SIZE_8_BITS|UART_PARITY_NONE|UART_STOP_BITS_1);
    UARTEnable(UART2, UART_PERIPHERAL | UART_ENABLE | UART_RX | UART_TX);

    // Initialize UART5 - U3B - GPS (TSIP)
    UARTConfigure(UART5, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART5, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetDataRate(UART5, PBUS_FREQ, UART5_FREQ);
    UARTSetLineControl(UART5, UART_DATA_SIZE_8_BITS|UART_PARITY_NONE|UART_STOP_BITS_1);
    UARTEnable(UART5, UART_PERIPHERAL | UART_ENABLE | UART_RX | UART_TX);

    // Set Port Directions
    XBee_CTS_TR = 1;     // XBee CTS Direction Port, Input
    XBee_RTS_TR = 0;     // XBee RTS Direction Port, Output
    XBee_RTS = 0;        // XBee Request To Send, Active-Low
}


// Send a string to the XBee
void putsXBee(char * data) {
	while (*data != 0) putcXBee(*(data++));
}

// Send a character to the XBee
void putcXBee(char data) {
	//Wait for room in transmit FIFO buffer
	while (XBee_CTS);
	while (U1ASTAbits.UTXBF);
	U1ATXREG = data;
}

// Get a character from the GPS
char getcGPS_NMEA(void) {
	while ( ! U3ASTAbits.URXDA);
	return U3ARXREG;
}

// Get a character from the GPS
char getcGPS_TSIP(void) {
	while ( ! U3BSTAbits.URXDA);
	return U3BRXREG;
}