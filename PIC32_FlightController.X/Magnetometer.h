/*
 *  The Ad-Flier! - Communications Include File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 *  Include into Main File for Operability:
 *  #include <Communications.h>
 *
 */

// Includes
#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>

// Magnetometer Settings
#define magUpdateRate     7
/*  ADC Update Rate
 *      0 :  0.75 Hz
 *      1 :  1.50 Hz
 *      2 :  3.00 Hz
 *      3 :  7.50 Hz
 *      4 : 15.00 Hz
 *      5 : 30.00 Hz
 *      6 : 75.00 Hz
 *      7 : RESERVED
 */

#define magScale          1
/*  Magnetometer Scale
 *      0  : +/- 0.88 Ga 1370b
 *      1  : +/- 1.30 Ga 1090b
 *      2  : +/- 1.90 Ga  820b
 *      3  : +/- 2.50 Ga  660b
 *      4  : +/- 4.00 Ga  440b
 *      5  : +/- 4.70 Ga  390b
 *      6  : +/- 5.60 Ga  330b
 *      7  : +/- 8.10 Ga  230b
 */
// Magnetometer Address Registers
typedef enum {
    MAG_CONFIG_A    =   0x00,   // Read & Write
    MAG_CONFIG_B    =	0x01,   // Read & Write
    MAG_MODE        =	0x02,   // Read & Write
    MAG_X_U         =	0x03,   // Read-Only
    MAG_X_L         =	0x04,   // Read-Only
    MAG_Z_U         =	0x05,   // Read-Only
    MAG_Z_L         =	0x06,   // Read-Only
    MAG_Y_U         =	0x07,   // Read-Only
    MAG_Y_L         =	0x08,   // Read-Only
    MAG_STATUS      =	0x09,   // Read-Only
    MAG_IDENT_A     =	0x0A,   // Read-Only
    MAG_IDENT_B     =	0x0B,   // Read-Only
    MAG_IDENT_C     =   0x0C,   // Read-Only
} MagnetometerAddress;

// Magnetic Headings Structure
typedef union {
    struct {
        unsigned XL:8;
        unsigned XU:8;
        unsigned YL:8;
        unsigned YU:8;
        unsigned ZL:8;
        unsigned ZU:8;
    } Bytes;
    struct {
        signed X:16;
        signed Y:16;
        signed Z:16;
    } Signed;
} MagnetometerReading;

// Global Variables
extern MagnetometerReading      magCurrent;
extern float                    magGain[8];
// Magnetometer Functions
extern void     setupMagnetometer();
extern UINT8    readMagnetometer(MagnetometerAddress);
extern void     writeMagnetometer(MagnetometerAddress, UINT8);
extern void     updateMagnetometerReadings (void);