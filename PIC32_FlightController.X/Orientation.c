#include <stdio.h>
#include <stdlib.h>
#include <p32xxxx.h>
#include <plib.h>

#include "Ad-Flier_Pins.h"
#include "Communications.h"
#include "Gyroscope.h"
#include "Accelerometer.h"
#include <math.h>
#include <float.h>

// Determine Data Output
#define SEND_TO_XBEE   TRUE
#define SEND_TO_FPGA   TRUE

// Calibration Settings
#define calibrationSampleCount  64
UINT8   numberOfSamples = 0;

// Angle Determination Variables & defines
#define degrees_per_radian  (180 / M_PI)
BOOL firstRun = 0;
AngleReading currentAngle, lastAngle, offsetAngle;
int totalTime = 10;
float angleAccelX, angleAccelY;
float tempGX, tempGY, tempGZ;
float tempAX, tempAY, tempAZ;

void initializeSensorVariables() {
    // Ellapsed Time in Milliseconds
    totalTime = 10;
    firstRun = 0;

    // Accelerometer & Gyroscope Temps
    tempAX = 0;
    tempAY = 0;
    tempAZ = 0;
    tempGX = 0;
    tempGY = 0;
    tempGZ = 0;

    // Accelerometer Direct Angles
    angleAccelX = 0;
    angleAccelY = 0;

    // Angle Structures
    currentAngle.X.Value = 0;
    currentAngle.Y.Value = 0;
    currentAngle.Z.Value = 0;
    lastAngle.X.Value = 0;
    lastAngle.Y.Value = 0;
    lastAngle.Z.Value = 0;
    offsetAngle.X.Value = 0;
    offsetAngle.Y.Value = 0;
    offsetAngle.Z.Value = 0;
}

void calibrateSensors() {
    // Reset all Variables
    initializeSensorVariables();
    numberOfSamples = 0;

    // Collect Specified Number of Samples
    while (numberOfSamples < calibrationSampleCount) {
        // Grab Latest Readings
        updateGyroscopeReadings();
        updateAccelerometerReadings();

        // Perform Gyroscope Calculations
        tempGX = (float) gyroCurrent.Signed.X;
        tempGX = -500 * (tempGX / (1 << 15));

        tempGY = (float) gyroCurrent.Signed.Y;
        tempGY = 500 * (tempGY / (1 << 15));

        tempGZ = (float) gyroCurrent.Signed.Z;
        tempGZ = 500 * (tempGZ / (1 << 15));

        // Perform Accelerometer Calculations
        tempAX = (float) accelCurrent.Signed.X;
        tempAX = 2 * (tempAX / (1 << 11));

        tempAY = (float) accelCurrent.Signed.Y;
        tempAY = 2 * (tempAY / (1 << 11));

        tempAZ = (float) accelCurrent.Signed.Z;
        tempAZ = 2 * (tempAZ / (1 << 11));

        // Convert Accelerometer G's to Angles
        angleAccelX = degrees_per_radian * atanf(tempAX / sqrtf(powf(tempAY, 2) + powf(tempAZ, 2)));
        angleAccelY = degrees_per_radian * atanf(tempAY / sqrtf(powf(tempAX, 2) + powf(tempAZ, 2)));

        // Initialize Angles
        if (!firstRun) {
            lastAngle.X.Value = angleAccelX;
            lastAngle.Y.Value = angleAccelY;
            lastAngle.Z.Value = 0;
        }

        // Process All Current Angles
        offsetAngle.X.Value += (0.98 * (lastAngle.X.Value + (tempGX * (100 / 1000)))) + (0.02 * angleAccelX);
        offsetAngle.Y.Value += (0.98 * (lastAngle.Y.Value + (tempGY * (100 / 1000)))) + (0.02 * angleAccelY);
        offsetAngle.Z.Value += lastAngle.Z.Value + (tempGZ * 0.01);

        // Increment Number of Samples
        numberOfSamples++;
    }

    // Divide Total by Number of Samples
    offsetAngle.X.Value /= calibrationSampleCount;
    offsetAngle.Y.Value /= calibrationSampleCount;
    offsetAngle.Z.Value /= calibrationSampleCount;
}

int updateSensors() {
    // Start Timer
    startTimeCounter2();

    // Grab Latest Readings
    updateGyroscopeReadings();
    updateAccelerometerReadings();

    // Perform Gyroscope Calculations
    tempGX = (float) gyroCurrent.Signed.X;
    tempGX = -500 * (tempGX / (1 << 15));

    tempGY = (float) gyroCurrent.Signed.Y;
    tempGY = 500 * (tempGY / (1 << 15));

    tempGZ = (float) gyroCurrent.Signed.Z;
    tempGZ = 500 * (tempGZ / (1 << 15));

    // Perform Accelerometer Calculations
    tempAX = (float) accelCurrent.Signed.X;
    tempAX = 2 * (tempAX / (1 << 11));

    tempAY = (float) accelCurrent.Signed.Y;
    tempAY = 2 * (tempAY / (1 << 11));

    tempAZ = (float) accelCurrent.Signed.Z;
    tempAZ = 2 * (tempAZ / (1 << 11));

    // Convert Accelerometer G's to Angles
    angleAccelX = degrees_per_radian * atanf(tempAX / sqrtf(powf(tempAY, 2) + powf(tempAZ, 2)));
    angleAccelY = degrees_per_radian * atanf(tempAY / sqrtf(powf(tempAX, 2) + powf(tempAZ, 2)));
    
    // Initialize Angles
    if (!firstRun) {
        lastAngle.X.Value = angleAccelX;
        lastAngle.Y.Value = angleAccelY;
        lastAngle.Z.Value = 0;
    }

    // Process All Current Angles
    currentAngle.X.Value = (0.98 * (lastAngle.X.Value + (tempGX * (100 / 1000)))) + (0.02 * angleAccelX);
    currentAngle.Y.Value = (0.98 * (lastAngle.Y.Value + (tempGY * (100 / 1000)))) + (0.02 * angleAccelY);
    currentAngle.Z.Value = lastAngle.Z.Value + (tempGZ * 0.01);

    // Subtract Offsets
    currentAngle.X.Value -= offsetAngle.X.Value;
    currentAngle.Y.Value -= offsetAngle.Y.Value;
    currentAngle.Z.Value -= offsetAngle.Z.Value;

    // Determine Total Time
    totalTime = stopTimeCounter2();

    // Output to Screen
    if (SEND_TO_XBEE == TRUE) {
        UINT8 buf[1024];


        // Format Gyroscope Data
        buf[0] = 'Y';
        buf[1] = gyroCurrent.XU;
        buf[2] = gyroCurrent.XL;
        buf[3] = gyroCurrent.YU;
        buf[4] = gyroCurrent.YL;
        buf[5] = gyroCurrent.ZU;
        buf[6] = gyroCurrent.ZL;
        buf[7] = gyroCurrent.TU;

        // Format Accelerometer Data
        buf[8] = 'A';
        buf[9] = accelCurrent.XU;
        buf[10] = accelCurrent.XL;
        buf[11] = accelCurrent.YU;
        buf[12] = accelCurrent.YL;
        buf[13] = accelCurrent.ZU;
        buf[14] = accelCurrent.ZL;

        // Format Current Angle Data
        buf[15] =  'C';
        buf[16] =  currentAngle.X.bytes.B3;
        buf[17] = currentAngle.X.bytes.B2;
        buf[18] = currentAngle.X.bytes.B1;
        buf[19] = currentAngle.X.bytes.B0;
        buf[20] = currentAngle.Y.bytes.B3;
        buf[21] = currentAngle.Y.bytes.B2;
        buf[22] = currentAngle.Y.bytes.B1;
        buf[23] = currentAngle.Y.bytes.B0;
        buf[24] = currentAngle.Z.bytes.B3;
        buf[25] = currentAngle.Z.bytes.B2;
        buf[26] = currentAngle.Z.bytes.B1;
        buf[27] = currentAngle.Z.bytes.B0;
        buf[28] = totalTime;

        // Transmit Sensor Data
        putsXBee(buf, 29);
    }

    // Dump Angles to FPGA
    if (SEND_TO_FPGA == TRUE) {
        //X Angle Desired, $00
        sendFPGAData(0x00, 0x7F);

        //X Angle Measured  $01
        sendFPGAData(0x01, (UINT8)currentAngle.X.UValue + 0x80);

        //Y Angle Desired  $02
        sendFPGAData(0x02, 0x7F);

        //Y Angle Measured  $03
        sendFPGAData(0x03, (UINT8)currentAngle.Y.UValue + 0x80);

        //Z Angle Desired  $04
        sendFPGAData(0x04, 0x7F);

        //Z Angle Measured  $05
        sendFPGAData(0x05, (UINT8)currentAngle.Y.UValue + 0x80);

        //Altitude Desired $06 (0 cm)  // For Testing
        sendFPGAData(0x06, 0x00);
    }

    // Store Previous Values
    lastAngle.X.UValue = currentAngle.X.UValue;
    lastAngle.Y.UValue = currentAngle.Y.UValue;
    lastAngle.Z.UValue = currentAngle.Z.UValue;

    return totalTime;
}