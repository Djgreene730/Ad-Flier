#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>

// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -

// GPS Pins
#define GPS_PPS             LATAbits.LATA0      // 1Hz Output
#define	GPS_PPS_TR          TRISAbits.TRISA0
#define GPS_B_TX_TR         TRISFbits.TRISF13
#define GPS_B_RX_TR         TRISFbits.TRISF12
#define GPS_B_TX            LATFbits.LATF13
#define GPS_B_RX            LATFbits.LATF12


// XBee Pins
#define XBee_Associate      LATAbits.LATA1      // High = Link Active
#define XBee_Associate_TR   TRISAbits.TRISA1
#define XBee_CTS            LATDbits.LATD14     // XBee Clear To Send, Active-Low
#define XBee_CTS_TR         TRISDbits.TRISD14    // XBee CTS Direction Port, Input
#define XBee_RTS            LATDbits.LATD15     // XBee Request To Send, Active-Low
#define XBee_RTS_TR         TRISDbits.TRISD15    // XBee RTS Direction Port, Output
#define XBee_DTR            LATAbits.LATA2      // Handshake Line
#define XBee_DTR_TR         TRISAbits.TRISA2
#define XBee_Reset          LATAbits.LATA3      // Active-Low Reset
#define XBee_Reset_TR       TRISAbits.TRISA3

// Barometer Pins
#define SPI_BARO_CS         LATAbits.LATA5      // SPI Active-Low Chip Select
#define SPI_BARO_CS_TR      TRISAbits.TRISA5
#define Barometer_SHDN      LATAbits.LATA4      // Active-Low Shutdown
#define Barometer_SHDN_TR   TRISAbits.TRISA4

// System Power Monitor ADC Pin
#define SysPowMonitor       LATBbits.LATB2      // ADC Line to Monitor Voltage-In
#define SysPowMonitor_TR    TRISBbits.TRISB2

// MicroSD Card Pins
#define SPI_uSD_CS          LATAbits.LATA6     // SPI Active-Low Chip Select
#define SPI_uSD_CS_TR       TRISAbits.TRISA6

// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -


// Setup Directions and Initial Values
void initializeAllPins(void);