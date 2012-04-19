#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>

// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

// GPS Pins
#define GPS_PPS             LATAbits.LATA3      // 1Hz Output
#define	GPS_PPS_TR          TRISAbits.TRISA3
#define	GPS_Standby         LATAbits.LATA4      // Activ-Low Standby
#define	GPS_Standby_TR      TRISAbits.TRISA4
#define	GPS_Reset           LATAbits.LATA5      // Active-Low Reset
#define	GPS_Reset_TR        TRISAbits.TRISA5

#define GPS_A_TX_TR         TRISFbits.TRISF5
#define GPS_A_RX_TR         TRISFbits.TRISF4
#define GPS_B_TX_TR         TRISFbits.TRISF13
#define GPS_B_RX_TR         TRISFbits.TRISF12

#define GPS_A_TX            LATFbits.LATF5
#define GPS_A_RX            LATFbits.LATF4
#define GPS_B_TX            LATFbits.LATF13
#define GPS_B_RX            LATFbits.LATF12


// XBee Pins
#define XBee_Associate      LATAbits.LATA6      // High = Link Active
#define XBee_Associate_TR   TRISAbits.TRISA6
#define XBee_CTS            LATDbits.LATD14     // XBee Clear To Send, Active-Low
#define XBee_CTS_TR         TRISDbits.TRISD14    // XBee CTS Direction Port, Input
#define XBee_RTS            LATDbits.LATD15     // XBee Request To Send, Active-Low
#define XBee_RTS_TR         TRISDbits.TRISD15    // XBee RTS Direction Port, Output
#define XBee_DTR            LATAbits.LATA7      // Handshake Line
#define XBee_DTR_TR         TRISAbits.TRISA7
#define XBee_Reset          LATAbits.LATA9      // Active-Low Reset
#define XBee_Reset_TR       TRISAbits.TRISA9

// Magnetometer Pins
#define MagNet_DRDY         LATAbits.LATA0      // High = Reading Ready
#define MagNet_DRDY_TR      TRISAbits.TRISA0

// Barometer Pins
#define SPI_BARO_CS         LATDbits.LATD1      // SPI Active-Low Chip Select
#define SPI_BARO_CS_TR      TRISDbits.TRISD1
#define Barometer_SHDN      LATAbits.LATA1      // Active-Low Shutdown
#define Barometer_SHDN_TR   TRISAbits.TRISA1

// SRAM Pins
#define SPI_SRAM_CS         LATDbits.LATD3      // SPI Active-Low Chip Select
#define SPI_SRAM_CS_TR      TRISDbits.TRISD3
#define SRAM_WP             LATAbits.LATA2      // Active-Low Write-Protect
#define SRAM_WP_TR          TRISAbits.TRISA2

// Humidity Sensor Pins
#define Humidity_IO         LATAbits.LATA10     // 1-Wire I/O Line
#define Humidity_IO_TR      TRISAbits.TRISA10

// System Power Monitor ADC Pin
#define SysPowMonitor       LATBbits.LATB2      // ADC Line to Monitor Voltage-In
#define SysPowMonitor_TR    TRISBbits.TRISB2

// MicroSD Card Pins
#define SPI_uSD_CS          LATDbits.LATD2      // SPI Active-Low Chip Select
#define SPI_uSD_CS_TR       TRISDbits.TRISD2

// FPGA SPI Pins
#define SPI_FPGA_CS         LATDbits.LATD4      // SPI Active-High Chip Select
#define SPI_FPGA_CS_TR      TRISDbits.TRISD4

// FPGA Parallel Port Pins
#define	FPGA_D0             LATEbits.LATE0      // Data Out (LSB)
#define	FPGA_D0_TR          TRISEbits.TRISE0
#define	FPGA_D1             LATEbits.LATE1      // Data Out ..
#define	FPGA_D1_TR          TRISEbits.TRISE1
#define	FPGA_D2             LATEbits.LATE2      // Data Out ..
#define	FPGA_D2_TR          TRISEbits.TRISE2
#define	FPGA_D3             LATEbits.LATE3      // Data Out ..
#define	FPGA_D3_TR          TRISEbits.TRISE3
#define	FPGA_D4             LATEbits.LATE4      // Data Out ..
#define	FPGA_D4_TR          TRISEbits.TRISE4
#define	FPGA_D5             LATEbits.LATE5      // Data Out ..
#define	FPGA_D5_TR          TRISEbits.TRISE5
#define	FPGA_D6             LATEbits.LATE6      // Data Out ..
#define	FPGA_D6_TR          TRISEbits.TRISE6
#define	FPGA_D7             LATEbits.LATE7      // Data Out (MSB)
#define	FPGA_D7_TR          TRISEbits.TRISE7
#define	FPGA_A_D            LATEbits.LATE8      // High=Address; Low=Data
#define	FPGA_A_D_TR         TRISEbits.TRISE8
#define	FPGA_R_W            LATEbits.LATE9      // High=Read; Low=Write
#define	FPGA_R_W_TR         TRISEbits.TRISE9
#define	FPGA_OK_IN          LATFbits.LATF0      // Data In is Good
#define	FPGA_OK_IN_TR       TRISFbits.TRISF0
#define	FPGA_OK_OUT         LATFbits.LATF1      // Data Out is Good
#define	FPGA_OK_OUT_TR      TRISFbits.TRISF1

// Gyroscope Pins
#define SPI_GYRO_CS         LATDbits.LATD5      // SPI Active-Low Chip Select
#define SPI_GYRO_CS_TR      TRISDbits.TRISD5
#define Gyro_DRDY           LATDbits.LATD6      // High = Reading Ready
#define Gyro_DRDY_TR        TRISDbits.TRISD6
#define Gyro_INT1           LATDbits.LATD7      // Programmable Interrupt
#define Gyro_INT1_TR        TRISDbits.TRISD7

// Accelerometer Pins
#define Accel_INT1          LATDbits.LATD9      // Programmable Interrupt
#define Accel_INT1_TR       TRISDbits.TRISD9
#define Accel_INT2          LATDbits.LATD8      // Programmable Interrupt
#define Accel_INT2_TR       TRISDbits.TRISD8


// I2C1 Pins
#define	I2C1_SCL_PIN        LATAbits.LATA14
#define	I2C1_SCL_PIN_TR     LATAbits.LATA14
#define	I2C1_SDA_PIN        LATAbits.LATA15
#define	I2C1_SDA_PIN_TR     LATAbits.LATA15

// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -


// Setup Directions and Initial Values
void initializeAllPins(void);