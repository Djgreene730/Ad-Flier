/*
 *  The Ad-Flier! - Communications Source File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 */


// Includes
#include "Communications.h"
#include "Ad-Flier_Pins.h"
#include <plib.h>

#define ReadSize_Gyroscope      8
#define ReadSize_Accelerometer  7
#define ReadSize_Compass        7
#define ReadSize_Barometer      5
#define ReadSize_Humidity       5
#define ReadSize_Voltage        3
#define ReadSize_GPS            1
#define ReadSize_Angles         14
#define ReadSize_Time           5

// Last SPI Device Used
SPI1_Devices        LastSPI1Initialize = None;

// GPS Configuration Global Variables
Sentence            gpsTempBuf = {0, 0};
Sentence            gps_nmea_position = {0, 0};
Sentence            gps_nmea_velocity = {0, 0};

// Sensor Readings
Sentence             gyroTempBuf = {0, 0};
Sentence             accelTempBuf = {0, 0};
Sentence             compassTempBuf = {0, 0};
Sentence             barometerTempBuf = {0, 0};
Sentence             humidityTempBuf = {0, 0};
Sentence             voltageTempBuf = {0, 0};
Sentence             angleTempBuf = {0, 0};
Sentence             gpsFCBTempBuf = {0, 0};
Sentence             timeTempBuf = {0, 0};

GyroscopeReading     gyroCurrent;
AccelerometerReading accelCurrent;
MagnetometerReading  compassCurrent;
BarometerReading     barometerCurrent;
HumidityReading      humidityCurrent;
VoltageReading       voltageCurrent;
AngleReading         angleCurrent;
rtccTime             timeFCBCurrent;
GPSReading           gpsBaseCurrent;


// XBee Configuration Global Variables
Sentence            xbee_baud = {0, 0};
Sentence            xbee_channel = {0, 0};
Sentence            xbee_network = {0, 0};

// Has the RTCC Time Been Synced with GPS?
BOOL gpsTimeUpdated = FALSE;


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
    UARTEnable(UART2, UART_PERIPHERAL | UART_ENABLE | UART_RX | UART_TX);

    // Configure UART2 RX Interrupt
    INTEnable(INT_SOURCE_UART_RX(UART2), INT_ENABLED);
    INTSetVectorPriority(INT_VECTOR_UART(UART2), INT_PRIORITY_LEVEL_2);
    INTSetVectorSubPriority(INT_VECTOR_UART(UART2), INT_SUB_PRIORITY_LEVEL_0);


    // Initialize UART5 - U3B - Bluetooth
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
  if (INTGetFlag(INT_SOURCE_UART_RX(UART1))) {
      // Echo what we just received.
      read_XBee_Sentence();

      // Clear the RX interrupt Flag
      INTClearFlag(INT_SOURCE_UART_RX(UART1));
    }

  // We don't care about TX interrupt
  if ( INTGetFlag(INT_SOURCE_UART_TX(UART1)) )  {
      INTClearFlag(INT_SOURCE_UART_TX(UART1));
    }
}

// Interrupt Function for GPS on UART2
void __ISR(_UART2_VECTOR, IPL2SOFT) IntUart2Handler(void) {
  // Is this an RX interrupt?
  if (INTGetFlag(INT_SOURCE_UART_RX(UART2))) {

      // Echo what we just received.
      read_GPS_Sentence();

      // Clear the RX interrupt Flag
      INTClearFlag(INT_SOURCE_UART_RX(UART2));
    }

  // We don't care about TX interrupt
  if ( INTGetFlag(INT_SOURCE_UART_TX(UART2)) ) {
      INTClearFlag(INT_SOURCE_UART_TX(UART2));
    }
}

// Keep track of GPS Sentence Position
UINT8 currentGpsState = 0;
// Get GPS Sentence from NMEA Port
UINT32 read_GPS_Sentence() {
    if (UARTReceivedDataIsAvailable(UART2)) {
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
                gpsTempBuf.ready = 1;
                currentGpsState = 0;
            }
        }
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

        // Wait for character to come...
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

        while(!UARTTransmissionHasCompleted(UART1));
    }    
}

// Send a character string onto the Bluetooth
void putsBluetooth(const char *buffer, UINT32 size) {

    while(size) {
        // Wait for Transmitter to be ready...
        while(!UARTTransmitterIsReady(UART5));

        UARTSendDataByte(UART5, *buffer);
        buffer++;
        size--;

        while(!UARTTransmissionHasCompleted(UART5));
    }    
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
    INTDisableInterrupts();
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
                else {
                    INTEnableInterrupts();
                    return 0;
                }
            }
            else {
                INTEnableInterrupts();
                return 0;
            }
        }
        else {
            INTEnableInterrupts();
            return 0;
        }
    }
    else {
        INTEnableInterrupts();        
        return 0;
    }

    // Configuration Successful
    INTEnableInterrupts();
    return 1;
}

UINT8 getXBeeConfig() {
    INTDisableInterrupts();
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
        INTEnableInterrupts();
        return 0;
    }

    // All Good, time to go home...
    INTEnableInterrupts();
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



// Get Sensor Readings from XBee
UINT8 currentReadState  =   0;
void read_XBee_Sentence() {
    
    // While data is in the RX Buffer...
    while(UARTReceivedDataIsAvailable(UART1)) {

        // Grab Character...
        UINT8 character = 0;
        character = UARTGetDataByte(UART1);

        // Determine the message type...
        if (currentReadState == 0) {
            switch(character){
                case 'Y':
                    // Gyroscope Reading
                    gyroTempBuf.size = 0;
                    currentReadState = 'Y';
                    break;
                case 'A':
                    // Accelerometer Reading
                    accelTempBuf.size = 0;
                    currentReadState = 'A';
                    break;
                case 'M':
                    // Magnetometer Reading
                    compassTempBuf.size = 0;
                    currentReadState = 'M';
                    break;
                case 'P':
                    // Barometer Reading
                    barometerTempBuf.size = 0;
                    currentReadState = 'P';
                    break;
                case 'H':
                    // Humidity Reading
                    humidityTempBuf.size = 0;
                    currentReadState = 'H';
                    break;
                case 'W':
                    // Power Source Reading
                    voltageTempBuf.size = 0;
                    currentReadState = 'W';
                    break;
                case 'G':
                    // Flight Control Board GPS Reading
                    gpsFCBTempBuf.size = 0;
                    currentReadState = 'G';
                    break;
                case 'C':
                    // Current Angles Reading
                    angleTempBuf.size = 0;
                    currentReadState = 'C';
                    break;
                case 'T':
                    // Flight Control Board Time Reading
                    timeTempBuf.size = 0;
                    currentReadState = 'T';
                default:
                    // Error
                    currentReadState = 0;
                    break;
            }
        }

        // Store the character
        switch(currentReadState){
            case 'Y':
                // Gyroscope Reading
                gyroTempBuf.data[gyroTempBuf.size] = character;
                gyroTempBuf.size++;

                // Is Reading Full?
                if (gyroTempBuf.size >= ReadSize_Gyroscope) {
                    // Mark Gyroscope Register as Busy
                    gyroTempBuf.ready = 0;

                    // Copy X-Value
                    gyroCurrent.XU = gyroTempBuf.data[1];
                    gyroCurrent.XL = gyroTempBuf.data[2];

                    // Copy Y-Value
                    gyroCurrent.YU = gyroTempBuf.data[3];
                    gyroCurrent.YL = gyroTempBuf.data[4];

                    // Copy Z-Value
                    gyroCurrent.ZU = gyroTempBuf.data[5];
                    gyroCurrent.ZL = gyroTempBuf.data[6];

                    // Copy Temperature
                    gyroCurrent.TU = gyroTempBuf.data[7];

                    // Mark Gyroscope Register as Ready and Restart
                    gyroTempBuf.ready = 1;
                    currentReadState = 0;
                }
                break;
            case 'A':
                // Accelerometer Reading
                accelTempBuf.data[accelTempBuf.size] = character;
                accelTempBuf.size++;

                // Is Reading Full?
                if (accelTempBuf.size >= ReadSize_Accelerometer) {
                    // Mark Register as Busy
                    accelTempBuf.ready = 0;

                    // Copy X-Value
                    accelCurrent.XU = accelTempBuf.data[1];
                    accelCurrent.XL = accelTempBuf.data[2];

                    // Copy Y-Value
                    accelCurrent.YU = accelTempBuf.data[3];
                    accelCurrent.YL = accelTempBuf.data[4];

                    // Copy Z-Value
                    accelCurrent.ZU = accelTempBuf.data[5];
                    accelCurrent.ZL = accelTempBuf.data[6];

                    // Mark Register as Ready and Restart
                    accelTempBuf.ready = 1;
                    currentReadState = 0;
                }
                break;
            case 'M':
                // Magnetometer Reading
                compassTempBuf.data[compassTempBuf.size] = character;
                compassTempBuf.size++;

                // Is Reading Full?
                if (compassTempBuf.size >= ReadSize_Compass) {
                    // Mark Register as Busy
                    compassTempBuf.ready = 0;

                    // Copy X-Value
                    compassCurrent.XU = compassTempBuf.data[1];
                    compassCurrent.XL = compassTempBuf.data[2];

                    // Copy Y-Value
                    compassCurrent.YU = compassTempBuf.data[3];
                    compassCurrent.YL = compassTempBuf.data[4];

                    // Copy Z-Value
                    compassCurrent.ZU = compassTempBuf.data[5];
                    compassCurrent.ZL = compassTempBuf.data[6];

                    // Mark Register as Ready and Restart
                    compassTempBuf.ready = 1;
                    currentReadState = 0;
                }
                break;
            case 'P':
                // Barometer Reading
                barometerTempBuf.data[barometerTempBuf.size] = character;
                barometerTempBuf.size++;

                // Is Reading Full?
                if (barometerTempBuf.size >= ReadSize_Barometer) {
                    // Mark Register as Busy
                    barometerTempBuf.ready = 0;

                    // Copy Pressure
                    barometerCurrent.PU = barometerTempBuf.data[1];
                    barometerCurrent.PL = barometerTempBuf.data[2];

                    // Copy Temperature
                    barometerCurrent.TU = barometerTempBuf.data[3];
                    barometerCurrent.TL = barometerTempBuf.data[4];

                    // Mark Register as Ready and Restart
                    barometerTempBuf.ready = 1;
                    currentReadState = 0;
                }
                break;
            case 'H':
                // Humidity Reading
                humidityTempBuf.data[humidityTempBuf.size] = character;
                humidityTempBuf.size++;

                // Is Reading Full?
                if (humidityTempBuf.size >= ReadSize_Humidity) {
                    // Mark Register as Busy
                    humidityTempBuf.ready = 0;

                    // Copy Pressure
                    humidityCurrent.HU = humidityTempBuf.data[1];
                    humidityCurrent.HL = humidityTempBuf.data[2];

                    // Copy Temperature
                    humidityCurrent.TU = humidityTempBuf.data[3];
                    humidityCurrent.TL = humidityTempBuf.data[4];

                    // Mark Register as Ready and Restart
                    humidityTempBuf.ready = 1;
                    currentReadState = 0;
                }
                break;
            case 'W':
                // Power Source Reading
                voltageTempBuf.data[voltageTempBuf.size] = character;
                voltageTempBuf.size++;

                // Is Reading Full?
                if (voltageTempBuf.size >= ReadSize_Voltage) {
                    // Mark Register as Busy
                    voltageTempBuf.ready = 0;

                    // Copy Pressure
                    voltageCurrent.VU = voltageTempBuf.data[1];
                    voltageCurrent.VL = voltageTempBuf.data[2];

                    // Mark Register as Ready and Restart
                    voltageTempBuf.ready = 1;
                    currentReadState = 0;
                }
                break;
            case 'G':
                // Flight Control Board GPS Reading
                gpsFCBTempBuf.data[gpsFCBTempBuf.size] = character;
                gpsFCBTempBuf.size++;

                // Is Reading Full?
                if (gpsFCBTempBuf.size >= ReadSize_GPS) {
                    currentReadState = 0;
                }
                break;
            case 'T':
                // Flight Control Boad Time Reading
                timeTempBuf.data[timeTempBuf.size] = character;
                timeTempBuf.size ++;

                // Is Reading Full?
                if (timeTempBuf.size >= ReadSize_Time) {
                    // Copy Time Byte's
                    timeFCBCurrent.b[3] = timeTempBuf.data[1];
                    timeFCBCurrent.b[2] = timeTempBuf.data[2];
                    timeFCBCurrent.b[1] = timeTempBuf.data[3];
                    timeFCBCurrent.b[0] = timeTempBuf.data[4];

                    // Mark Register as Ready
                    currentReadState = 0;
                }

            case 'C':
                // Current Angles Reading
                angleTempBuf.data[angleTempBuf.size] = character;
                angleTempBuf.size++;

                // Is Reading Full?
                if (angleTempBuf.size >= ReadSize_Angles) {
                    // Mark Register as Busy
                    angleTempBuf.ready = 0;

                    // Copy X-Value
                    angleCurrent.X.bytes.B3 = angleTempBuf.data[1];
                    angleCurrent.X.bytes.B2 = angleTempBuf.data[2];
                    angleCurrent.X.bytes.B1 = angleTempBuf.data[3];
                    angleCurrent.X.bytes.B0 = angleTempBuf.data[4];

                    // Copy Y-Value
                    angleCurrent.Y.bytes.B3 = angleTempBuf.data[5];
                    angleCurrent.Y.bytes.B2 = angleTempBuf.data[6];
                    angleCurrent.Y.bytes.B1 = angleTempBuf.data[7];
                    angleCurrent.Y.bytes.B0 = angleTempBuf.data[8];

                    // Copy Z-Value
                    angleCurrent.Z.bytes.B3 = angleTempBuf.data[9];
                    angleCurrent.Z.bytes.B2 = angleTempBuf.data[10];
                    angleCurrent.Z.bytes.B1 = angleTempBuf.data[11];
                    angleCurrent.Z.bytes.B0 = angleTempBuf.data[12];

                    // Update Conversion Time
                    angleCurrent.T = angleTempBuf.data[13];

                    // Mark Register as Ready and Restart
                    angleTempBuf.ready = 1;
                    currentReadState = 0;
                }
                break;
            default:
                // Error
                currentReadState = 0;
                break;
        }
    }
}