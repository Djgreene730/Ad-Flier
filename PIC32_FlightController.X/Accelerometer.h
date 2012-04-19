/*
 *  The Ad-Flier! - Accelerometer Include File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 *  Include into Main File for Operability:
 *  #include "Accelerometer.h"
 *
 */

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>

// Accelerometer Address Registers
typedef enum {
    ACCEL_STATUS            =	0x00,
    ACCEL_OUT_X_MSB         =	0x01,
    ACCEL_OUT_X_LSB         =	0x02,
    ACCEL_OUT_Y_MSB         =	0x03,
    ACCEL_OUT_Y_LSB         =	0x04,
    ACCEL_OUT_Z_MSB         =	0x05,
    ACCEL_OUT_Z_LSB         =	0x06,
    ACCEL_SYSMOD            =	0x0B,
    ACCEL_INT_SOURCE        =	0x0C,
    ACCEL_WHO_AM_I          =	0x0D,
    ACCEL_XYZ_DATA_CFG      =	0x0E,
    ACCEL_HP_FILTER_CUTOFF  =	0x0F,
    ACCEL_PL_STATUS         =	0x10,
    ACCEL_PL_CFG            =	0x11,
    ACCEL_PL_COUNT          =	0x12,
    ACCEL_PL_BF_ZCOMP       =	0x13,
    ACCEL_P_L_THS_REG       =	0x14,
    ACCEL_FF_MT_CFG         =	0x15,
    ACCEL_FF_MT_SRC         =	0x16,
    ACCEL_FF_MT_THS         =	0x17,
    ACCEL_FF_MT_COUNT       =	0x18,
    ACCEL_TRANSIENT_CFG     =	0x1D,
    ACCEL_TRANSIENT_SRC     =	0x1E,
    ACCEL_TRANSIENT_THS     =	0x1F,
    ACCEL_TRANSIENT_COUNT   =	0x20,
    ACCEL_PULSE_CFG         =	0x21,
    ACCEL_PULSE_SRC         =	0x22,
    ACCEL_PULSE_THSX        =	0x23,
    ACCEL_PULSE_THSY        =	0x24,
    ACCEL_PULSE_THSZ        =	0x25,
    ACCEL_PULSE_TMLT        =	0x26,
    ACCEL_PULSE_LTCY        =	0x27,
    ACCEL_PULSE_WIND        =	0x28,
    ACCEL_ASLP_COUNT        =	0x29,
    ACCEL_CTRL_REG1         =	0x2A,
    ACCEL_CTRL_REG2         =	0x2B,
    ACCEL_CTRL_REG3         =	0x2C,
    ACCEL_CTRL_REG4         =	0x2D,
    ACCEL_CTRL_REG5         =	0x2E,
    ACCEL_OFF_X             =	0x2F,
    ACCEL_OFF_Y             =	0x30,
    ACCEL_OFF_Z             =	0x31
} AccelerometerAddress;

typedef union {
    struct {
        unsigned XU:8;
        unsigned YU:8;
        unsigned ZU:8;
    };
    struct {
        signed X:8;
        signed Y:8;
        signed Z:8;
    };
} AccelerometerReading;

// Global Variables
extern AccelerometerReading    accelCurrent;
extern AccelerometerReading    accelCurrentDegrees;

// Gyroscope Functions
extern void     setupAccelerometer();
extern UINT8    readAccelerometer(AccelerometerAddress);
extern void     writeAccelerometer(AccelerometerAddress, UINT8);
extern void     updateAccelerometerReadings (void);