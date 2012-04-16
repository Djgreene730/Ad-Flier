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

// XBee Configuration Global Variables
Sentence xbee_baud = {0, 0};
Sentence xbee_channel = {0, 0};
Sentence xbee_network = {0, 0};

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
    XBee_RTS = 0;        // XBee Request To Send
}

// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

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

// XBee Functions
// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

// Get String from XBee
UINT32 getXBee(char *buffer, UINT32 max_size) {
    // Keep count of the characters
    UINT32 num_char = 0;

    while(num_char < max_size) {
        UINT8 character;

        // Wait for XBee Line to be Free, then grab the character
        while(!UARTReceivedDataIsAvailable(UART1));
        character = UARTGetDataByte(UART1);

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

// Send a character string onto the XBee
UINT8 configureXBee(Sentence baudRate, Sentence channelID, Sentence networkID) {

    // Baud Rates
    /* - - - - - - - - 
     *  0 (1200 bps)
     *  1 (2400 bps)
     *  2 (4800 bps)
     *  3 (9600 bps)
     *  4 (19200 bps)
     *  5 (38400 bps)
     *  6 (57600 bps)
     *  7 (115200 bps) 
    */

    // Channel ID: 0B   - 1A
    // Network ID: 0000 - FFFF

    UINT8   buf[100];
    UINT32  rx_size;

    // Enter Configuration Mode
    putsXBee("+++", strlen("+++"));
    rx_size = getXBee(buf, 100);

    // Check if Configuration Mode Entered
    if ((rx_size == 2) && strcmp(buf, "OK")) {
        // Set Baud Rate
        sprintf(buf, "ATBD%.*s\r", baudRate.size, baudRate.data);
        putsXBee(buf, strlen(buf));
        rx_size = getXBee(buf, 100);

        // Check if Received OK
        if ((rx_size == 2) && strcmp(buf, "OK")) {
            // Set Channel ID
            sprintf(buf, "ATCH%.*s\r", channelID.size, channelID.data);
            putsXBee(buf, strlen(buf));
            rx_size = getXBee(buf, 100);

            // Check if Received OK
            if ((rx_size == 2) && strcmp(buf, "OK")) {
                // Set Network ID
                sprintf(buf, "ATID%.*s\r", networkID.size, networkID.data);
                putsXBee(buf, strlen(buf));
                rx_size = getXBee(buf, 100);

                // Check if Received OK
                if ((rx_size == 2) && strcmp(buf, "OK")) {
                    // Write Configuration & Exit
                    putsXBee("ATWR\r", strlen("ATWR\r"));
                    rx_size = getXBee(buf, 100);
                    putsXBee("ATCN\r", strlen("ATCN\r"));
                    rx_size = getXBee(buf, 100);
                }
                else return 0;
            }
            else return 0;
        }
        else return 0;
    }
    else return 0;

    // Configuration Successful
    return 1;
}

UINT8 getXBeeConfig() {
    UINT8   buf[20];
    UINT32  rx_size;

    // Enter Configuration Mode
    putsXBee("+++", strlen("+++"));
    rx_size = getXBee(buf, 1024);

    // Wait for OK, Configuration Mode Entered...
    if ((rx_size == 2) && strcmp(buf, "OK")) {
        // Get Baud Rate
        putsXBee("ATBD\r", strlen("ATBD\r"));
        xbee_baud.size = getXBee(xbee_baud.data, 150);

        // Get Channel ID
        putsXBee("ATCH\r", strlen("ATCH\r"));
        xbee_channel.size = getXBee(xbee_channel.data, 150);
        
        // Get Current Network ID
        putsXBee("ATID\r", strlen("ATID\r"));
        xbee_network.size = getXBee(xbee_network.data, 150);

        // Exit XBee Config Mode
        putsXBee("ATCN\r", strlen("ATCN\r"));
        rx_size = getXBee(buf, 100);
    }

    // Failed to Enter Config Mode
    else {
        return 0;
    }

    // All Good, time to go home...
    return 1;
}


// FPGA Parallel Functions
// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

void setFPGAParallelPins(UINT8 ByteIn) {
    // Create Variable and Set Value
    FPGADataPins tempOut;
    tempOut.Byte = ByteIn;
    
    //Set Pins (Assume TRIS is Set)
    FPGA_D0 = tempOut.D0;
    FPGA_D1 = tempOut.D1;
    FPGA_D2 = tempOut.D2;
    FPGA_D3 = tempOut.D3;
    FPGA_D4 = tempOut.D4;
    FPGA_D5 = tempOut.D5;
    FPGA_D6 = tempOut.D6;
    FPGA_D7 = tempOut.D7;
}

UINT8 getFPGAParallelPins() {
    // Create Variable and Set Value
    FPGADataPins tempOut;

    // Get Pins (Assume TRIS is Set)
    tempOut.D0 = FPGA_D0;
    tempOut.D1 = FPGA_D1;
    tempOut.D2 = FPGA_D2;
    tempOut.D3 = FPGA_D3;
    tempOut.D4 = FPGA_D4;
    tempOut.D5 = FPGA_D5;
    tempOut.D6 = FPGA_D6;
    tempOut.D7 = FPGA_D7;

    // Return Data
    return tempOut.Byte;
}


void sendFPGAData(UINT8 address, UINT8 data) {
    // Set Port Direction as Output & Hold Low
    TRISE = 0x00;
    PORTE = 0x00;

    // Send Out Address
    setFPGAParallelPins(address);
    FPGA_A_D = 1;
    FPGA_R_W = 1;
    FPGA_OK_OUT = 1;

    // Wait for FPGA to Acknowledge then Lower
    while (!FPGA_OK_IN) ;
    FPGA_OK_OUT = 0;
    while (FPGA_OK_IN) ;

    // Send Out Data
    setFPGAParallelPins(data);
    FPGA_A_D = 0;
    FPGA_R_W = 1;
    FPGA_OK_OUT = 1;
    
    // Wait for FPGA to Acknowledge then Lower
    while (!FPGA_OK_IN) ;
    FPGA_OK_OUT = 0;
    while (FPGA_OK_IN) ;
}

UINT8 getFPGAData(UINT8 address) {
    // Set Port Direction as Output & Hold Low
    TRISE = 0x00;
    PORTE = 0x00;

    // Send Out Address
    setFPGAParallelPins(address);
    FPGA_A_D = 1;
    FPGA_R_W = 1;
    FPGA_OK_OUT = 1;

    // Wait for FPGA to Acknowledge then Lower
    while (!FPGA_OK_IN) ;

    //Change Port Direction to Input and ACK
    TRISE = 0xFF;
    FPGA_OK_OUT = 0;

    // Wait for FPGA to Drop OK Signal
    while (FPGA_OK_IN) ;

    // Wait for FPGA to Return the Data, then Capture
    while(!FPGA_OK_IN) ;
    UINT tempData;
    tempData = getFPGAParallelPins();
    FPGA_OK_OUT = 1;

    // Wait for FPGA to Acknowledge then Lower
    while (!FPGA_OK_IN) ;
    FPGA_OK_OUT = 0;
    while (FPGA_OK_IN) ;

    // Return the Result
    return tempData;
}

// SPI Functions
// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -






