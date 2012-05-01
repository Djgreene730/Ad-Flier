/*
 *  The Ad-Flier! - MMA8452Q Accelerometer Source File
 *  Team SkyLights, Senior Design, Spring 2012
 *
*/

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>
#include "Ad-Flier_Pins.h"
#include "Communications.h"
#include "Accelerometer.h"

// Accelerometer Settings

#define accelUpdateRate     3
/*  ADC Update Rate
 *      0 : 800.00 Hz
 *      1 : 400.00 Hz
 *      2 : 200.00 Hz
 *      3 : 100.00 Hz
 *      4 :  50.00 Hz
 *      5 :  12.50 Hz
 *      6 :   6.25 Hz
 *      7 :   1.56 Hz
 */

#define accelScale          2
/*  Accelerometer Scale
 *      2  : +/- 2g
 *      4  : +/- 4g
 *      8  : +/- 8g
 */

// Global Variables
AccelerometerReading    accelCurrent;
AccelerometerReading    accelCurrentDegrees;

// Local Variables
UINT8 Addr_Accel_WR = 0x3A;
UINT8 Addr_Accel_RD = 0x3B;

// Setup Accelerometer Configuration
void setupAccelerometer() {
    // Configure XYZ_DATA_CFG Register
    writeAccelerometer(ACCEL_XYZ_DATA_CFG, 0x00); //2g, HPF Disabled

    // Configure High-Pass Filter
    writeAccelerometer(ACCEL_HP_FILTER_CUTOFF, 0x00); //2g, HPF Disabled

    // Configure Register 1
    writeAccelerometer(ACCEL_CTRL_REG1, (0x05 | (accelUpdateRate << 3))); //100Hz, LowNoise, Full-Read

    // Configure Register 2
    writeAccelerometer(ACCEL_CTRL_REG2, 0x12); //HighResolution, No Sleep

    // Configure Register 3
    writeAccelerometer(ACCEL_CTRL_REG3, 0x00); //Default Int's

    // Configure Register 4
    writeAccelerometer(ACCEL_CTRL_REG4, 0x01); //Interrupt on DRDY

    // Configure Register 5
    writeAccelerometer(ACCEL_CTRL_REG5, 0x01); //Interrupt on Pin1
}

// Read Register on Accelerometer
UINT8    readAccelerometer(AccelerometerAddress address) {
    // Break Loop if Error
    BOOL    Success = TRUE;
    UINT8   tempData = 0;
    while (1) {
        // Check if I2C is Started
        if (!I2C_IS_Initialized) initializeI2C();

        // Start the transfer to read the EEPROM.
        IdleI2C1();
        I2C_StartTransfer(FALSE);

        // Send the Device Address & Read Bit
        if (!I2C_TransmitOneByte(Addr_Accel_WR)) break;

        // Send the Address & Read Bit
        if (!I2C_TransmitOneByte(address)) break;

        // Send Restart Command to I2C
        IdleI2C1();
        I2C_StartTransfer(TRUE);

        // Send the Device Address & Read Bit
        if (!I2C_TransmitOneByte(Addr_Accel_RD)) break;

        // Check for Overflow Error
        if(I2CReceiverEnable(I2C1, TRUE) == I2C_RECEIVE_OVERFLOW) break;
        else {
            // Grab Data when Ready
            while(!I2CReceivedDataIsAvailable(I2C1));
            tempData = I2CGetByte(I2C1);

            // Send NACK
            I2CAcknowledgeByte ( I2C1, FALSE );
            Delayus(10);
            I2CStop(I2C1);
            return tempData;
        }
    }
    // Stop Transfer and Return Data
    I2C_StopTransfer();
    return tempData;
}

// Write to Register on Accelerometer
void     writeAccelerometer(AccelerometerAddress address, UINT8 data) {
    // Break Loop if Error
    while (1) {
        // Check if I2C is Started
        if (!I2C_IS_Initialized) initializeI2C();

        // Start the transfer to read the EEPROM.
        IdleI2C1();
        I2C_StartTransfer(FALSE);

        // Send the Device Address & Read Bit
        if (!I2C_TransmitOneByte(Addr_Accel_WR)) break;

        // Send the Address & Read Bit
        if (!I2C_TransmitOneByte(address)) break;

        // Send the Device Address & Read Bit
        if (!I2C_TransmitOneByte(data)) break;
        
        // All Done!
        break;
    }
    // Stop Transfer and Return Data
    Delayus(10);
    I2C_StopTransfer();
}

// Update Accelerometer Readings
void     updateAccelerometerReadings (void) {

    // Copy X-Value
    accelCurrent.XU = readAccelerometer(ACCEL_OUT_X_MSB);
    accelCurrent.XL = readAccelerometer(ACCEL_OUT_X_LSB);
    accelCurrent.Signed.X >>= 4;

    // Copy Y-Value
    accelCurrent.YU = readAccelerometer(ACCEL_OUT_Y_MSB);
    accelCurrent.YL = readAccelerometer(ACCEL_OUT_Y_LSB);
    accelCurrent.Signed.Y >>= 4;

    // Copy Z-Value
    accelCurrent.ZU = readAccelerometer(ACCEL_OUT_Z_MSB);
    accelCurrent.ZL = readAccelerometer(ACCEL_OUT_Z_LSB);
    accelCurrent.Signed.Z >>= 4;
   

}
