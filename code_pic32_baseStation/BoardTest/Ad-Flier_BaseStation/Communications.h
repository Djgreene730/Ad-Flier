/*
 *  The Ad-Flier! - Communications Include File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 *  Include into Main File for Operability:
 *  #include <Communications.h>
 *
 */

// Includes
#include <plib.h>

// System Frequencies
#define PBUS_FREQ       40000000    // 40 MHz - Main Oscillator

// UART Frequencies
#define UART1_FREQ      57600       // 57.6 kbps - XBee
#define UART2_FREQ      4800        //  4.8 kbps - GPS NMEA
#define UART5_FREQ      38400       // 28.4 kbps - GPS TSIP

// XBee Handshake Pins
#define XBee_CTS        LATD.14     // XBee Clear To Send, Active-Low
#define XBee_RTS        LATD.15     // XBee Request To Send, Active-Low
#define XBee_CTS_TR     TRISD.14    // XBee CTS Direction Port, Input
#define XBee_RTS_TR     TRISD.15    // XBee RTS Direction Port, Output

// SPI Frequencies
#define SPI_uSD_FREQ    25000000    // 25 MHz Max
#define SPI_SRAM_FREQ   40000000    // 40 MHz Max
#define SPI_BARO_FREQ   8000000     //  8 MHz Max
#define SPI_GYRO_FREQ   10000000    // 10 MHz Max

// SPI Select Directions
#define SPI_BARO_TR     TRISD.1     // Port D1 - Output
#define SPI_uSD_TR      TRISD.2     // Port D2 - Output
#define SPI_SRAM_TR     TRISD.3     // Port D3 - Output
#define SPI_FPGA_TR     TRISD.4     // Port D4 - Output
#define SPI_GYRO_TR     TRISD.5     // Port D5 - Output

// SPI Select Ports
#define SPI_BARO_CS     LATD.1      // Port D1 Active-Low
#define SPI_uSD_CS      LATD.2      // Port D2 Active-Low
#define SPI_SRAM_CS     LATD.3      // Port D3 Active-Low
#define SPI_FPGA_CS     LATD.4      // Port D4 Active-High
#define SPI_GYRO_CS     LATD.5      // Port D5 Active-Low


// I2C Mode
#define I2C_FREQ        400000      // 400 KHz Fast-Mode


// -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -


// Initialization Commands
void initializeUART (void);
void initializeSPI (void);
void initializeI2C (void);

// Single Character Commands
void putcGPS(char);
void putcXBee(char);

// Stringed Character Commands
void putsGPS(char *);
void putsXBee(char *);


