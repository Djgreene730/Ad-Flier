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

#define SEND_TO_XBEE   TRUE
#define SEND_TO_FPGA   FALSE


BOOL firstRun = 0;
float angleAccelX, angleAccelY;

AngleReading currentAngle, lastAngle;


void startTimeCounter() {
    T2CON = 0x8020;     // enable TMR1, Tpb, 1:1
    TMR2 = 0;
}

int stopTimeCounter() {
    return (TMR2 / 1250);
}


void updateSensors() {
    
    // Start the Clock
    startTimeCounter();


    // Grab Latest Readings
    updateGyroscopeReadings();          //gyroCurrent
    updateAccelerometerReadings();      //accelCurrent


    // Convert Gyroscope to G's
    float tempX = gyroCurrent.Signed.X;
    tempX = 1000 * (tempX / 65536);

    float tempY = gyroCurrent.Signed.Y;
    tempY = 1000 * (tempY / 65536);

    float tempZ = gyroCurrent.Signed.Z;
    tempZ = 1000 * (tempZ / 65536);


    // Perform Accelerometer Calculations
    float tempAX = accelCurrent.Signed.X;
    tempAX = (4 * (tempAX / 1024));// + 0.0000001;

    float tempAY = accelCurrent.Signed.Y;
    tempAY = (4 * (tempAY / 1024));// + 0.0000001;

    float tempAZ = accelCurrent.Signed.Z;
    tempAZ = (4 * (tempAZ / 1024));// + 0.0000001;

    // Convert Accelerometer G's to Angles
    angleAccelX = atanf(tempAX / sqrtf(powf(tempAY, 2) + powf(tempAZ, 2)));
    angleAccelY = atanf(tempAY / sqrtf(powf(tempAX, 2) + powf(tempAZ, 2)));

    // Initialize Angles
    if (!firstRun) {
        lastAngle.X.Value = angleAccelX;
        lastAngle.Y.Value = angleAccelY;
        lastAngle.Z.Value = 0;
    }

    // Process All Current Angles
    currentAngle.X.Value = (0.98 * (lastAngle.X.Value + (tempX * 0.01))) + (0.02 * angleAccelX);
    currentAngle.Y.Value = (0.98 * (lastAngle.Y.Value + (tempY * 0.01))) + (0.02 * angleAccelY);
    currentAngle.Z.Value = lastAngle.Z.Value + (tempZ * 0.01);


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
        buf[28] = stopTimeCounter();

        // Transmit Sensor Data
        putsXBee(buf, 29);
    }

    if (SEND_TO_FPGA == TRUE) {
        //X Angle Desired  $00
        sendFPGAData(0x00, 0x00);

        //X Angle Measured  $01
        sendFPGAData(0x01, (UINT8)currentAngle.X.UValue);

        //Y Angle Desired  $02
        sendFPGAData(0x02, 0x00);

        //Y Angle Measured  $03
        sendFPGAData(0x03, (UINT8)currentAngle.Y.UValue);

        //Z Angle Desired  $04
        sendFPGAData(0x04, 0x00);

        //Z Angle Measured  $05
        sendFPGAData(0x05, (UINT8)currentAngle.Y.UValue);

        //Altitude Desired $06 (30)
        sendFPGAData(0x06, 0x1E);
    }

    // Dump Angles to FPGA

    // Store Previous Values
    lastAngle.X.UValue = currentAngle.X.UValue;
    lastAngle.Y.UValue = currentAngle.Y.UValue;
    lastAngle.Z.UValue = currentAngle.Z.UValue;
}