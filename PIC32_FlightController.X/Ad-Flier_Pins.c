#include "Ad-Flier_Pins.h"

// Initialize All Pins
void initializeAllPins(void) {
    
    // Setup GPS
    GPS_PPS_TR          = 1;    // Input
    GPS_Standby_TR      = 0;    // Output
    GPS_Reset_TR        = 0;    // Output

    GPS_Standby         = 1;    // High - No Standby
    GPS_Reset           = 1;    // High - No Reset


    // Setup XBee
    XBee_Associate_TR   = 1;    // Input
    XBee_Reset_TR       = 0;    // Output
    XBee_CTS_TR         = 1;    // Input
    XBee_RTS_TR         = 0;    // Output
    XBee_DTR_TR         = 0;    // Output

    XBee_RTS            = 0;    // Low - Ready to Send
    XBee_DTR            = 1;    // High - No Sleep
    XBee_Reset          = 1;    // High - No Reset


    // Setup Magnetometer
    MagNet_DRDY_TR      = 1;    // Input


    // Setup Barometer
    SPI_BARO_CS_TR      = 0;    // Output
    Barometer_SHDN_TR   = 0;    // Output

    SPI_BARO_CS         = 1;    // High - Not Selected
    Barometer_SHDN      = 1;    // High - Chip Engaged


    // Setup SRAM
    SRAM_WP_TR          = 0;    // Output
    SPI_SRAM_CS_TR      = 0;    // Output

    SRAM_WP             = 0;    // Low - Enable Write Protect
    SPI_SRAM_CS         = 1;    // High - Not Selected


    // Setup Humidity Sensor
    Humidity_IO_TR      = 1;    // Input


    // Setup ADC SystemPowerMonitor Line
    SysPowMonitor_TR    = 1;    // Input


    // Setup MicroSD Card
    SPI_uSD_CS_TR       = 0;    // Output

    SPI_uSD_CS          = 1;    // High - Not Selected


    // Setup FPGA - SPI
    SPI_FPGA_CS_TR      = 0;    // Output
    SPI_FPGA_CS         = 0;    // Low - Not Selected

    // Setup FPGA - Parallel Port
    FPGA_D0_TR          = 1;    // Input
    FPGA_D1_TR          = 1;    // Input
    FPGA_D2_TR          = 1;    // Input
    FPGA_D3_TR          = 1;    // Input
    FPGA_D4_TR          = 1;    // Input
    FPGA_D5_TR          = 1;    // Input
    FPGA_D6_TR          = 1;    // Input
    FPGA_D7_TR          = 1;    // Input
    FPGA_A_D_TR         = 1;    // Input
    FPGA_R_W_TR         = 1;    // Input
    FPGA_OK_IN_TR       = 1;    // Input
    FPGA_OK_OUT_TR      = 0;    // Output

    FPGA_OK_OUT         = 0;    // Low - Data Not Ready


    // Setup Gyroscope
    Gyro_DRDY_TR        = 1;    // Input
    Gyro_INT1_TR        = 1;    // Input
    SPI_GYRO_CS_TR      = 0;    // Output

    SPI_GYRO_CS         = 1;    // High - Not Selected


    // Setup Accelerometer
    Accel_INT1_TR       = 1;    // Input
    Accel_INT2_TR       = 1;    // Input

    // Setup I2C Lines
    I2C1_SDA_PIN_TR     = 1;
    I2C1_SCL_PIN_TR     = 0;
    I2C1_SCL_PIN        = 0;
}
