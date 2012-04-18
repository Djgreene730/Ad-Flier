/*
 *  The Ad-Flier! - Gyroscope Include File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 *  Include into Main File for Operability:
 *  #include <Gyroscope.h>
 *
 */

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>

// Gyroscope Address Registers
typedef enum {
    WHO_AM_I        =   0x0F,   // Read-Only
    CTRL_REG1       =	0x20,   // Read & Write
    CTRL_REG2       =	0x21,   // Read & Write
    CTRL_REG3       =	0x22,   // Read & Write
    CTRL_REG4       =	0x23,   // Read & Write
    CTRL_REG5       =	0x24,   // Read & Write
    REFERENCE       =	0x25,   // Read & Write
    OUT_TEMP        =	0x26,   // Read-Only
    STATUS_REG      =	0x27,   // Read-Only
    OUT_X_L         =	0x28,   // Read-Only
    OUT_X_H         =	0x29,   // Read-Only
    OUT_Y_L         =	0x2A,   // Read-Only
    OUT_Y_H         =	0x2B,   // Read-Only
    OUT_Z_L         =	0x2C,   // Read-Only
    OUT_Z_H         =	0x2D,   // Read-Only
    FIFO_CTRL_REG   =	0x2E,   // Read & Write
    FIFO_SRC_REG    =	0x2F,   // Read-Only
    INT1_CFG        =	0x30,   // Read & Write
    INT1_SRC        =	0x31,   // Read-Only
    INT1_TSH_XH     =	0x32,   // Read & Write
    INT1_TSH_XL     =	0x33,   // Read & Write
    INT1_TSH_YH     =	0x34,   // Read & Write
    INT1_TSH_YL     =	0x35,   // Read & Write
    INT1_TSH_ZH     =	0x36,   // Read & Write
    INT1_TSH_ZL     =	0x37,   // Read & Write
    INT1_DURATION   =	0x38    // Read & Write
} GyroscopeAddress;

typedef union {
    struct {
        unsigned XL:8;
        unsigned XU:8;
        unsigned YL:8;
        unsigned YU:8;
        unsigned ZL:8;
        unsigned ZU:8;
    };
    struct {
        signed X:16;
        signed Y:16;
        signed Z:16;
    };
} GyroscopeReading;

// Global Variables
extern GyroscopeReading    gyroCurrent;

// Gyroscope Functions
extern UINT8 readGyroscope(GyroscopeAddress);
extern void writeGyroscope(GyroscopeAddress, UINT8);
extern UINT8 setupGyroscope();
extern void updateGyroscopeReadings (void);
