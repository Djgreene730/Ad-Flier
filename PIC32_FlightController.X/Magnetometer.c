/*
 *  The Ad-Flier! - HMC5883L Magnetometer Source File
 *  Team SkyLights, Senior Design, Spring 2012
 *
*/

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>
#include "Ad-Flier_Pins.h"
#include "Communications.h"
#include "Magnetometer.h"

// Global Variables
MagnetometerReading     magCurrent;
float magGain[8] = {0.73, 0.92, 1.22, 1.52, 2.27, 2.56, 3.03, 4.35};

// Local Variables
UINT8 Addr_Mag_WR = 0x3C;
UINT8 Addr_Mag_RD = 0x3D;

// Setup Magnetometer Configuration Registers
void setupMagnetometer() {
    // Configure Register A
    writeMagnetometer(MAG_CONFIG_A, 0x60 | (magUpdateRate << 2)); //Avg8Samples, 75Hz, Normal Bias

    // Configure Register B
    writeMagnetometer(MAG_CONFIG_B, (magScale << 5)); //Default Gain of 1.3Ga (1090 bits / Ga)

    // Configure Mode Register
    writeMagnetometer(MAG_MODE, 0x00); //Continuous
}

// Read Register on Magnetometer
UINT8    readMagnetometer(MagnetometerAddress address) {
    // Break Loop if Error
    UINT8   tempData = 0;
    while (1) {
        // Check if I2C is Started
        if (!I2C_IS_Initialized) initializeI2C();

        // Start the transfer to read the EEPROM.
        IdleI2C1();
        I2C_StartTransfer(FALSE);

        // Send the Device Address & Read Bit
        if (!I2C_TransmitOneByte(Addr_Mag_WR)) break;

        // Send the Address & Read Bit
        if (!I2C_TransmitOneByte(address)) break;

        // Send Restart Command to I2C
        IdleI2C1();
        I2C_StartTransfer(TRUE);

        // Send the Device Address & Read Bit
        if (!I2C_TransmitOneByte(Addr_Mag_RD)) break;

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

// Write to Register on Magnetometer
void     writeMagnetometer(MagnetometerAddress address, UINT8 data) {
    // Break Loop if Error
    while (1) {
        // Check if I2C is Started
        if (!I2C_IS_Initialized) initializeI2C();

        // Start the transfer to read the EEPROM.
        IdleI2C1();
        I2C_StartTransfer(FALSE);

        // Send the Device Address & Read Bit
        if (!I2C_TransmitOneByte(Addr_Mag_WR)) break;

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

// Update Magnetometer Readings
void     updateMagnetometerReadings (void) {

    // Copy X-Value
    magCurrent.Bytes.XU = readMagnetometer(MAG_X_U);
    magCurrent.Bytes.XL = readMagnetometer(MAG_X_L);

    // Copy Y-Value
    magCurrent.Bytes.YU = readMagnetometer(MAG_Y_U);
    magCurrent.Bytes.YL = readMagnetometer(MAG_Y_L);

    // Copy Z-Value
    magCurrent.Bytes.ZU = readMagnetometer(MAG_Z_U);
    magCurrent.Bytes.ZL = readMagnetometer(MAG_Z_L);


}

