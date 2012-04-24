/*
 *  The Ad-Flier! - L3G4200D Gyroscope Source File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 */

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>
#include "Ad-Flier_Pins.h"
#include "Gyroscope.h"
#include "Communications.h"

// Global Variables
GyroscopeReading    gyroCurrent;
GyroscopeReading    gyroCurrentDegrees;

UINT8 readGyroscope(GyroscopeAddress address) {
    // See if Gyroscope is Initialized
    if (LastSPI1Initialize != Gyroscope) initGyro;

    // Create Temporary Variable
    UINT8 tempData = 0;

    // Select Gyroscope
    SPI1_SelectGYRO;

    // Request Data at Address...
    WriteSPI1(0x80 | address);
    tempData = getcSPI1();

    if (address == (OUT_TEMP || OUT_X_L || OUT_X_H || OUT_Y_L || OUT_Y_H || OUT_Z_L || OUT_Z_H )) while(Gyro_DRDY);

    WriteSPI1(0xFF);
    tempData = getcSPI1();

    // Deselect Gyro & Return Data
    SPI1_SelectNone;
    return tempData;
}

void writeGyroscope(GyroscopeAddress address, UINT8 data) {
    // See if Gyroscope is Initialized
    if (LastSPI1Initialize != Gyroscope) initGyro;

    // Select Gyroscope
    SPI1_SelectGYRO;

    // Write Data at Address...
    WriteSPI1(0x00 | address);
    getcSPI1();
    WriteSPI1(data);
    getcSPI1();

    // Deselect Gyro & Return Data
    SPI1_SelectNone;
}

UINT8 setupGyroscope() {
    // See if Gyroscope is Initialized
    if (LastSPI1Initialize != Gyroscope) initGyro;

    // Set all configuration registers...
    if(readGyroscope(WHO_AM_I) == 211) {
        // Enable Axis X, Y, & Z
        writeGyroscope(CTRL_REG1, 0x0F);

        // Configure CTRL_REG2
        writeGyroscope(CTRL_REG2, 0x00);

        // Configure CTRL_REG3
        writeGyroscope(CTRL_REG3, 0x08);

        // CTRL_REG4
        writeGyroscope(CTRL_REG4, 0x00);

        // CTRL_REG5
        writeGyroscope(CTRL_REG5, 0x00);

        // Delay then Return Home
        Delayms(1500);
        return 0;
    }

    // The Gyroscope didn't respond...
    return 0;
}

void updateGyroscopeReadings (void) {
    // Copy X-Value (Change Orientation to -Y)
    gyroCurrent.XU = readGyroscope(OUT_Y_H);
    gyroCurrent.XL = readGyroscope(OUT_Y_L);

    // Copy Y-Value (Change Orientation to X)
    gyroCurrent.YU = readGyroscope(OUT_X_H);
    gyroCurrent.YL = readGyroscope(OUT_X_L);
    
    // Copy Z-Value
    gyroCurrent.ZU = readGyroscope(OUT_Z_H);
    gyroCurrent.ZL = readGyroscope(OUT_Z_L);

    // Get Temperature
    gyroCurrent.TU = readGyroscope(OUT_TEMP);
}