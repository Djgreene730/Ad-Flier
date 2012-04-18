#include "Ad-Flier_Pins.h"

// Initialize All Pins
void initializeAllPins(void) {
    
    // Setup GPS
    GPS_PPS_TR          = 1;    // Input
    
    // Setup XBee
    XBee_Associate_TR   = 1;    // Input
    XBee_Reset_TR       = 0;    // Output
    XBee_CTS_TR         = 1;    // Input
    XBee_RTS_TR         = 0;    // Output
    XBee_DTR_TR         = 0;    // Output

    XBee_RTS            = 0;    // Low - Ready to Send
    XBee_DTR            = 1;    // High - No Sleep
    XBee_Reset          = 1;    // High - No Reset

    // Setup Barometer
    SPI_BARO_CS_TR      = 0;    // Output
    Barometer_SHDN_TR   = 0;    // Output

    SPI_BARO_CS         = 1;    // High - Not Selected
    Barometer_SHDN      = 1;    // High - Chip Engaged

    // Setup ADC SystemPowerMonitor Line
    SysPowMonitor_TR    = 1;    // Input


    // Setup MicroSD Card
    SPI_uSD_CS_TR       = 0;    // Output

    SPI_uSD_CS          = 1;    // High - Not Selected

}
