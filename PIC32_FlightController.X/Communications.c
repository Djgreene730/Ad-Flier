/*
 *  The Ad-Flier! - Communications Source File
 *  Team SkyLights, Senior Design, Spring 2012
 */


// Includes
#include "Communications.h"
#include "Ad-Flier_Pins.h"

// System Frequencies
#define PBUS_FREQ       80000000    // 40 MHz - Main Oscillator

// UART Frequencies
#define UART1_FREQ      57600       // 57.6 kbps - XBee
#define UART2_FREQ      4800        //  4.8 kbps - GPS NMEA
#define UART5_FREQ      38400       // 28.4 kbps - GPS TSIP

// SPI Frequencies
#define SPI_uSD_FREQ    25000000    // 25 MHz Max
#define SPI_SRAM_FREQ   40000000    // 40 MHz Max
#define SPI_BARO_FREQ   8000000     //  8 MHz Max
#define SPI_GYRO_FREQ   10000000    // 10 MHz Max




// I2C Mode
#define I2C_FREQ        400000      // 400 KHz Fast-Mode

// Initialize all Applicable UART Channels
void initializeUART (void) {

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


// Get GPS Sentence from NMEA Port
UINT32 read_GPS_Sentence (char *buffer, UINT32 max_size) {
    // Keep count of the characters
    UINT32 num_char = 0;

    // Create Wait-Variable
    UINT8 stringAck = 0;

    while(num_char < max_size) {
        UINT8 character = 0;

        // Wait for GPS Line to be Free, then grab the character
        while(!UARTReceivedDataIsAvailable(UART5));
        character = UARTGetDataByte(UART5);

        // Wait for GPS Code Prefix
        if ((stringAck == 0) && (character == '$'))
            stringAck = 1;

        // If GPS Prefix is Started, and it's not an end character...
        if ((stringAck == 1) && (character == '\r'))
            break;

        // Record the Character if we're in the Sentence Stram
        if (stringAck == 1) {
            *buffer = character;
            buffer++;
            num_char++;
        }
    }

    // Return the Size of the Sentence
    return num_char;
}


// Get String from XBee
UINT32 getXBee(char *buffer, UINT32 max_size) {
    // Keep count of the characters
    UINT32 num_char = 0;

    while(num_char < max_size) {
        UINT8 character;

        // Wait for XBee Line to be Free, then grab the character
        while(!UARTReceivedDataIsAvailable(UART5));
        character = UARTGetDataByte(UART5);

        // Break if this is the end character
        if (character == '\r')
            break;

        // Record the Character if we're in the Sentence Stram
        *buffer = character;
        buffer++;
        num_char++;
    }

    // Return the Size of the Sentence
    return num_char;
}


// Send a character string onto the XBee
void putsXBee(const char *buffer, UINT32 size) {
    while(size)
    {
        while(!UARTTransmitterIsReady(UART1))
            ;

        UARTSendDataByte(UART1, *buffer);
        buffer++;
        size--;
    }

    while(!UARTTransmissionHasCompleted(UART1))
        ;
}
