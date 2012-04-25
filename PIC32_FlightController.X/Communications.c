/*
 *  The Ad-Flier! - Communications Source File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 */


// Includes
#include "Communications.h"
#include "Ad-Flier_Pins.h"
#include <plib.h>

// Is I2C Initialized
BOOL I2C_IS_Initialized = FALSE;

// Last SPI Device Used
SPI1_Devices LastSPI1Initialize = None;

// GPS Configuration Global Variables
Sentence    gpsTempBuf = {0, 0};
Sentence    gps_nmea_position = {0, 0};
Sentence    gps_nmea_velocity = {0, 0};

// XBee Configuration Global Variables
Sentence    xbee_baud = {0, 0};
Sentence    xbee_channel = {0, 0};
Sentence    xbee_network = {0, 0};

void FPGA_RESET_FETCH_STATE() {
    //SPI_FPGA_CS = 1, FPGA_OK_OUT = 0, Delayus(1000), SPI_FPGA_CS = 0;
    LATDbits.LATD4 = 1;
    LATFbits.LATF1 = 0;
    Delayus(100);
    LATDbits.LATD4 = 0;
}

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
    UARTSetLineControl(UART2, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UART2, PBUS_FREQ, UART2_FREQ);
    UARTEnable(UART2, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX));

    /*

    // Configure UART2 RX Interrupt
    INTEnable(INT_SOURCE_UART_RX(UART2), INT_ENABLED);
    INTSetVectorPriority(INT_VECTOR_UART(UART2), INT_PRIORITY_LEVEL_2);
    INTSetVectorSubPriority(INT_VECTOR_UART(UART2), INT_SUB_PRIORITY_LEVEL_0);

    */

    // Initialize UART5 - U3B - GPS (TSIP)
    UARTConfigure(UART5, UART_ENABLE_PINS_TX_RX_ONLY);
    //UARTSetFifoMode(UART5, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetDataRate(UART5, PBUS_FREQ, UART5_FREQ);
    UARTSetLineControl(UART5, UART_DATA_SIZE_8_BITS|UART_PARITY_NONE|UART_STOP_BITS_1);
    UARTEnable(UART5, UART_PERIPHERAL | UART_ENABLE | UART_RX );
    
    // Set Port Directions
    XBee_CTS_TR = 1;     // XBee CTS Direction Port, Input
    XBee_RTS_TR = 0;     // XBee RTS Direction Port, Output
    XBee_RTS = 0;        // XBee Request To Send
}

// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

// Interrupt Function for GPS on UART2
void __ISR(_UART2_VECTOR, IPL2SOFT) IntUart2Handler(void) {
  // Is this an RX interrupt?
  if (INTGetFlag(INT_SOURCE_UART_RX(UART2)))
    {
      // Echo what we just received.
      read_GPS_Sentence();

      // Clear the RX interrupt Flag
      INTClearFlag(INT_SOURCE_UART_RX(UART2));
    }

  // We don't care about TX interrupt
  if ( INTGetFlag(INT_SOURCE_UART_TX(UART2)) )
    {
      INTClearFlag(INT_SOURCE_UART_TX(UART2));
    }
}


// Get GPS Sentence from NMEA Port
UINT8 currentGpsSentenceState = 0;
UINT32 read_GPS_Sentence() {
    while(UARTReceivedDataIsAvailable(UART2)) {
        UINT8 character = 0;

        // Wait for GPS Line to be Free, then grab the character
        character = UARTGetDataByte(UART2);

        // Wait for GPS Code Prefix
        if ((currentGpsSentenceState == 0) && (character == '$')) {
            gpsTempBuf.size = 0;
            currentGpsSentenceState = 1;
        }
        
        // Record the Character if we're in the Sentence Stream
        if (currentGpsSentenceState == 1) {
            gpsTempBuf.data[gpsTempBuf.size] = character;
            gpsTempBuf.size++;

            // Is this the last character?
            if (character == '\n') {
                currentGpsSentenceState = 2;
                break;
            }
        }
    }

    //Copy new GPS string to Globals
    if (currentGpsSentenceState == 2) {
        int i = 0;
        if (gpsTempBuf.data[3] == 'G') {
            // Hold any operations to Sentence
            gps_nmea_position.ready = 0;

            // Copy GPS TempBuf to Sentence
            for (i = 0; i < gpsTempBuf.size; i++) {
                gps_nmea_position.data[i] = gpsTempBuf.data[i];
            }
            gps_nmea_position.size = gpsTempBuf.size;

            // Sentence is ready to go!
            gps_nmea_position.ready = 1;
            //putsXBee(gps_nmea_position.data, gps_nmea_position.size);
        }
        else if (gpsTempBuf.data[3] == 'V') {
            // Hold any operations to Sentence
            gps_nmea_velocity.ready = 0;

            // Copy GPS TempBuf to Sentence
            for (i = 0; i < gpsTempBuf.size; i++) {
                gps_nmea_velocity.data[i] = gpsTempBuf.data[i];
            }
            gps_nmea_velocity.size = gpsTempBuf.size;

            // Sentence is ready to go!
            gps_nmea_velocity.ready = 1;
            //putsXBee(gps_nmea_velocity.data, gps_nmea_velocity.size);
        }
        else {
            // Error
        }
        currentGpsSentenceState = 0;
    }
    
    // Return the Size of the Sentence
    return gpsTempBuf.size;
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

    while(size) {
        // Wait for Transmitter to be ready...
        while(!UARTTransmitterIsReady(UART1));

        UARTSendDataByte(UART1, *buffer);
        buffer++;
        size--;
    }

    while(!UARTTransmissionHasCompleted(UART1));
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
    tempOut.D0 = PORTEbits.RE0;
    tempOut.D1 = PORTEbits.RE1;
    tempOut.D2 = PORTEbits.RE2;
    tempOut.D3 = PORTEbits.RE3;
    tempOut.D4 = PORTEbits.RE4;
    tempOut.D5 = PORTEbits.RE5;
    tempOut.D6 = PORTEbits.RE6;
    tempOut.D7 = PORTEbits.RE7;

    // Return Data
    return tempOut.Byte;
}

void sendFPGAData(UINT8 address, UINT8 data) {
    // Set Port Direction as Output & Hold Low
    TRISE = 0x00;
    PORTE = 0x00;

    // Send FPGA to Fetch State, and wait for Low Flag
    FPGA_RESET_FETCH_STATE();
    while (PORTFbits.RF0 == 1) ;

    // Send Out Address
    setFPGAParallelPins(address);
    FPGA_A_D = 1;
    FPGA_R_W = 0;
    FPGA_OK_OUT = 1;

    // Wait for FPGA to Acknowledge High
    while (PORTFbits.RF0 == 0) ;
    FPGA_OK_OUT = 0;

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - -


    // Send FPGA to Fetch State, wait for OK_IN Low
    FPGA_RESET_FETCH_STATE();
    while (PORTFbits.RF0 == 1) ;

    // Send Out Data
    setFPGAParallelPins(data);
    FPGA_A_D = 0;
    FPGA_R_W = 0;
    FPGA_OK_OUT = 1;
    
    // Wait for FPGA to Acknowledge High
    while (PORTFbits.RF0 == 0) ;
    FPGA_OK_OUT = 0;
    
    // Wait for FPGA to Ackowledge Low, back to Fetch State
    while (PORTFbits.RF0 == 1) ;
}

UINT8 getFPGAData(UINT8 address) {
    // Set Port Direction as Output & Hold Low
    TRISE = 0x00;
    PORTE = 0x00;

    // Send FPGA to Fetch State, and wait for Low Flag
    FPGA_RESET_FETCH_STATE();
    while (PORTFbits.RF0 == 1) ;

    // Send Out Address
    setFPGAParallelPins(address);
    FPGA_A_D = 1;
    FPGA_R_W = 0;
    FPGA_OK_OUT = 1;

    // Wait for FPGA to Acknowledge High
    while (PORTFbits.RF0 == 0) ;
    FPGA_OK_OUT = 0;

    // - - - - - - - - - - - - - - - - - - - - - - - - - -

    // Send FPGA to Fetch State
    FPGA_RESET_FETCH_STATE();
    while (PORTFbits.RF0 == 1) ;

    // Set Port Direction as Output & Hold Low
    TRISE = 0x00;
    PORTE = 0x00;

    // Send Out Address
    FPGA_A_D = 0;
    FPGA_R_W = 1;
    FPGA_OK_OUT = 1;

    // Wait for FPGA to Acknowledge High, Drop Flag, then Switch to Input
    while (PORTFbits.RF0 == 0) ;
    FPGA_OK_OUT = 0;
    TRISE = 0xFF;

    // Wait for FPGA to Ackowledge Low, back to Fetch State
    while (PORTFbits.RF0 == 1) ;

    // Wait for FPGA to Raise Flag, then grab data
    while (PORTFbits.RF0 == 0) ;
    UINT tempData;
    tempData = getFPGAParallelPins();
    FPGA_OK_OUT = 1;

    // Wait for FPGA to go to Fetch State, then drop Flag
    while (PORTFbits.RF0 == 1) ;
    FPGA_OK_OUT = 0;

    // Return the Result
    return tempData;
}

// SPI Functions
// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

// Initialize SPI Bus 1 to Desired Clock Speed
void initiateSPI1(int CLKSPEED) {
    // Set Initial COnfiguration
    unsigned int config = ( SPI_CON_MSTEN | SPI_CON_MODE8 | SPI_SMP_ON | SPI_CKE_OFF | CLK_POL_ACTIVE_LOW | SPI_CON_ON );

    // Setup SPI_1 Pins
    PORTSetPinsDigitalOut(IOPORT_D, BIT_1);     // Barometer Select
    PORTSetPinsDigitalOut(IOPORT_D, BIT_2);     // MicroSD Select
    PORTSetPinsDigitalOut(IOPORT_D, BIT_3);     // SRAM Select
    PORTSetPinsDigitalOut(IOPORT_D, BIT_5);     // Gyroscope Select

    // Raise all Select Lines
    SPI1_SelectNone;

    // Disable then Enable SPI_1
    SpiChnClose(1);
    SpiChnOpen(1, config, (PBUS_FREQ / CLKSPEED));
}

// Initialize SPI Bus 2 to Desired Clock Speed
void initiateSPI2(int CLKSPEED) {
    // Set Initial COnfiguration
    unsigned int config = ( SPI_CON_MSTEN | SPI_CON_MODE8 | SPI_SMP_ON | SPI_CKE_OFF | CLK_POL_ACTIVE_LOW | SPI_CON_ON );

    // Setup SPI_2 Pins
    PORTSetPinsDigitalOut(IOPORT_D, BIT_4);     // FPGA Select
    
    // Raise All Select Lines
    SPI2_SelectNone;

    // Disable then Enable SPI_2
    SpiChnClose(2);
    SpiChnOpen(2, config, (PBUS_FREQ / CLKSPEED));
}


// I2C Functions
// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -


// False=Start, Truen = Restart
BOOL I2C_StartTransfer( BOOL restart ) {
    I2C_STATUS  status;
    IdleI2C1();

    do {
        // Either Start or Restart the Line
        if(restart) status = I2CRepeatStart(I2C1);
        // Wait for Line to Idle
        else  {
            while (!I2CBusIsIdle(I2C1));
            status = I2CStart(I2C1);
        }
    } while (status != I2C_SUCCESS);
    
    // Wait for the signal to complete
    do {
        status = I2CGetStatus(I2C1);
    } while ( !(I2C_START & status) );
    return TRUE;
}

// Send One Byte over I2C
BOOL I2C_TransmitOneByte( UINT8 data ) {
    I2C_STATUS  status;

    // Wait for the transmitter to be ready
    while(!I2CTransmitterIsReady(I2C1));

    // Transmit the byte
    status = I2CSendByte(I2C1, data);
    if(status == I2C_MASTER_BUS_COLLISION) return FALSE;

    // Wait for the transmission to finish
    while(!I2CTransmissionHasCompleted(I2C1));

    // Verify that the byte was acknowledged
    if(!I2CByteWasAcknowledged(I2C1))  return FALSE;

    return TRUE;
}

// Stops a transfer to/from the I2C Bus
void I2C_StopTransfer( void ) {
    // Wait for the signal to complete
    I2C_STATUS  status;
    do {
        // Send the Stop signal
        //I2CClearStatus(I2C1, I2C_START);
        //I2CClearStatus(I2C1, I2C_BYTE_ACKNOWLEDGED);
        I2CStop(I2C1);
        status = I2CGetStatus(I2C1);
    } while ( !(I2C_STOP & status) );
}

BOOL initializeI2C() {
    // Set the I2C baudrate
    I2CConfigure(I2C1, I2C_ENABLE_SLAVE_CLOCK_STRETCHING);
    UINT32 actualClock = I2CSetFrequency(I2C1, 80000000, I2C_FREQ);

    //Check Error: I2C1 clock frequency error exceeds 10%
    if ( abs(actualClock - I2C_FREQ) > (I2C_FREQ / 10) ) {
        return FALSE;
    }

    // Enable the I2C bus
    I2CEnable(I2C1, TRUE);
    I2C_IS_Initialized = TRUE;
    return TRUE;
}

