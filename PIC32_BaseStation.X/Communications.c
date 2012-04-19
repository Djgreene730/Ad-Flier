/*
 *  The Ad-Flier! - Communications Source File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 */


// Includes
#include "Communications.h"
#include "Ad-Flier_Pins.h"
#include <plib.h>

// Last SPI Device Used
SPI1_Devices    LastSPI1Initialize = None;

// GPS Configuration Global Variables
Sentence    gpsTempBuf = {0, 0};
Sentence    gps_nmea_position = {0, 0};
Sentence    gps_nmea_velocity = {0, 0};

// Gyroscope Readings
Sentence            gyroTempBuf = {0, 0};
Sentence            accelTempBuf = {0, 0};
GyroscopeReading    gyroCurrent;
AccelerometerReading    accelCurrent;

// XBee Configuration Global Variables
Sentence    xbee_baud = {0, 0};
Sentence    xbee_channel = {0, 0};
Sentence    xbee_network = {0, 0};


// Initialize all Applicable UART Channels
void initializeUART (void) {

    // Initialize UART1 - U1A - XBee
    UARTConfigure(UART1, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART1, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetDataRate(UART1, PBUS_FREQ, UART1_FREQ);
    UARTSetLineControl(UART1, UART_DATA_SIZE_8_BITS|UART_PARITY_NONE|UART_STOP_BITS_1);
    UARTEnable(UART1, UART_PERIPHERAL | UART_ENABLE | UART_RX | UART_TX);

    // Configure UART1 RX Interrupt
    INTEnable(INT_SOURCE_UART_RX(UART1), INT_ENABLED);
    INTSetVectorPriority(INT_VECTOR_UART(UART1), INT_PRIORITY_LEVEL_1);
    INTSetVectorSubPriority(INT_VECTOR_UART(UART1), INT_SUB_PRIORITY_LEVEL_0);

    // Initialize UART2 - U3A - GPS (NMEA)
    UARTConfigure(UART2, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART2, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(UART2, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UART2, PBUS_FREQ, UART2_FREQ);
    UARTEnable(UART2, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX));

    // Configure UART2 RX Interrupt
    INTEnable(INT_SOURCE_UART_RX(UART2), INT_ENABLED);
    INTSetVectorPriority(INT_VECTOR_UART(UART2), INT_PRIORITY_LEVEL_2);
    INTSetVectorSubPriority(INT_VECTOR_UART(UART2), INT_SUB_PRIORITY_LEVEL_0);

    // Initialize UART5 - U3B - GPS (TSIP)
    UARTConfigure(UART5, UART_ENABLE_PINS_TX_RX_ONLY);
    //UARTSetFifoMode(UART5, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetDataRate(UART5, PBUS_FREQ, UART5_FREQ);
    UARTSetLineControl(UART5, UART_DATA_SIZE_8_BITS|UART_PARITY_NONE|UART_STOP_BITS_1);
    UARTEnable(UART5, UART_PERIPHERAL | UART_ENABLE | UART_RX | UART_TX );
    
    // Set Port Directions
    XBee_CTS_TR = 1;     // XBee CTS Direction Port, Input
    XBee_RTS_TR = 0;     // XBee RTS Direction Port, Output
    XBee_RTS = 0;        // XBee Request To Send

    putsBluetooth("AT+BAUD7", 8);
}

// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

UINT8 output_character[1024];
UINT32 char_size = 0;

// Interrupt Function for GPS on UART2
void __ISR(_UART1_VECTOR, IPL2SOFT) IntUart1Handler(void) {
  // Is this an RX interrupt?
  if (INTGetFlag(INT_SOURCE_UART_RX(UART1)))
    {
      // Echo what we just received.
      read_Gyro_Sentence();

      // Clear the RX interrupt Flag
      INTClearFlag(INT_SOURCE_UART_RX(UART1));
    }

  // We don't care about TX interrupt
  if ( INTGetFlag(INT_SOURCE_UART_TX(UART1)) )
    {
      INTClearFlag(INT_SOURCE_UART_TX(UART1));
    }
}

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

// Keep track of GPS Sentence Position
UINT8 currentGpsState = 0;

// Get GPS Sentence from NMEA Port
UINT32 read_GPS_Sentence() {
   
    while(UARTReceivedDataIsAvailable(UART2)) {
        UINT8 character = 0;

        // Wait for GPS Line to be Free, then grab the character
        character = UARTGetDataByte(UART2);

        // Wait for GPS Code Prefix
        if (character == '$') {
            gpsTempBuf.size = 0;
            currentGpsState = 1;
        }
        
        // Record the Character if we're in the Sentence Stream
        if (currentGpsState == 1) {
            gpsTempBuf.data[gpsTempBuf.size] = character;
            gpsTempBuf.size++;

            // Is this the last character?
            if (character == '\n') {
                currentGpsState = 2;
                break;
            }
        }
    }

    //Copy new GPS string to Globals
    if (currentGpsState == 2) {
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
        currentGpsState = 0;
    }
    
    // Return the Size of the Sentence
    return gpsTempBuf.size;
}

// XBee & Bluetooth Functions
// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

// Get String from Bluetooth
UINT32 getBluetooth(char *buffer, UINT32 max_size) {
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

// Send a character string onto the Bluetooth
void putsBluetooth(const char *buffer, UINT32 size) {

    while(size) {
        // Wait for Transmitter to be ready...
        while(!UARTTransmitterIsReady(UART5));

        UARTSendDataByte(UART5, *buffer);
        buffer++;
        size--;
    }

    while(!UARTTransmissionHasCompleted(UART5));
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



// Get Gyroscope Readings from XBee
UINT8 currentGyroState = 0;
void read_Gyro_Sentence() {
    while(UARTReceivedDataIsAvailable(UART1)) {
        UINT8 character = 0;

        // Wait for GPS Line to be Free, then grab the character
        character = UARTGetDataByte(UART1);

        // Wait for GPS Code Prefix
        if ((character == 71) && (currentGyroState != 1)) {
            gyroTempBuf.size = 0;
            currentGyroState = 1;
        }
        else if ((character == 65) && (currentGyroState != 1)) {
            accelTempBuf.size = 0;
            currentGyroState = 3;
        }

        // Record the Character if we're in the Sentence Stream
        if (currentGyroState == 1) {
            gyroTempBuf.data[gyroTempBuf.size] = character;
            gyroTempBuf.size++;

            // Is this the last character?
            if (gyroTempBuf.size == 7) {
                currentGyroState = 2;
                break;
            }
        }
        else if (currentGyroState == 3) {
            accelTempBuf.data[accelTempBuf.size] = character;
            accelTempBuf.size++;

            // Is this the last character?
            if (accelTempBuf.size == 4) {
                currentGyroState = 4;
                break;
            }
        }

    }

    //Copy new GPS string to Globals
    if (currentGyroState == 2) {
        gyroTempBuf.ready = 0;

        // Copy X-Value
        gyroCurrent.X = (gyroTempBuf.data[1] & 0xFF)<<8;
        gyroCurrent.X |= (gyroTempBuf.data[2] & 0xFF);

        // Copy Y-Value
        gyroCurrent.Y = (gyroTempBuf.data[3] & 0xFF)<<8;
        gyroCurrent.Y |= (gyroTempBuf.data[4] & 0xFF);

        // Copy Z-Value
        gyroCurrent.Z = (gyroTempBuf.data[5] & 0xFF)<<8;
        gyroCurrent.Z |= (gyroTempBuf.data[6] & 0xFF);

        gyroTempBuf.ready = 1;
        currentGyroState = 0;
    }
    else if (currentGyroState == 4) {
        accelTempBuf.ready = 0;

        // Copy X-Value
        accelCurrent.X = (accelTempBuf.data[1] & 0xFF);

        // Copy Y-Value
        accelCurrent.Y = (accelTempBuf.data[2] & 0xFF);

        // Copy Z-Value
        accelCurrent.Z = (accelTempBuf.data[3] & 0xFF);

        accelTempBuf.ready = 1;
        currentGyroState = 0;
    }
}