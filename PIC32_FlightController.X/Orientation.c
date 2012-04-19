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

#define SEND_TO_XBEE   FALSE
#define SEND_TO_FPGA   TRUE


BOOL firstRun = 0;
float angleAccelX, angleAccelY;

float currentAngleX, lastAngleX;
float currentAngleY, lastAngleY;
float currentAngleZ, lastAngleZ;


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
    float tempX = (short)(gyroCurrent.Y & 0xFFFF);
    tempX = -1000 * (tempX / 65536);

    float tempY = (short)(gyroCurrent.X & 0xFFFF);
    tempY = -1000 * (tempY / 65536);

    float tempZ = (short)(gyroCurrent.Z & 0xFFFF);
    tempZ = 1000 * (tempZ / 65536);

    // Perform Accelerometer Calculations
    float tempAX = (INT8)(accelCurrent.X & 0xFF);
    tempAX = 4 * (tempAX / 256);

    float tempAY = (INT8)(accelCurrent.Y & 0xFF);
    tempAY = 4 * (tempAY / 256);

    float tempAZ = (INT8)(accelCurrent.Z & 0xFF);
    tempAZ = 4 * (tempAZ / 256);


    // Convert Accelerometer G's to Angles
    angleAccelX = atanf(tempAX / sqrtf(powf(tempAY, 2) + powf(tempAZ, 2)));
    angleAccelY = atanf(tempAY / sqrtf(powf(tempAX, 2) + powf(tempAZ, 2)));

    // Initialize Angles
    if (!firstRun) {
        lastAngleX = angleAccelX;
        lastAngleZ = angleAccelY;
        lastAngleZ = 0;
    }

    // Process All Current Angles
    currentAngleX = (0.98 * (lastAngleX + (tempX * 0.01))) + (0.02 * angleAccelX);
    currentAngleY = (0.98 * (lastAngleY + (tempY * 0.01))) + (0.02 * angleAccelY);
    currentAngleZ = lastAngleZ + (tempZ * 0.01);

    // Capture Update Time
    int totalTime = stopTimeCounter();

    // Output to Screen
    if (SEND_TO_XBEE) {
        UINT8 buf[1024];
        sprintf(buf, "AX: %3.4f, AY: %3.4f, AZ: %3.4f\tGX: %3.4f, GY: %3.4f, GZ: %3.4f\tPX: %3.4f, PY: %3.4f, PZ: %3.4f\tT: %d\r\n", tempAX, tempAY, tempAZ, tempX, tempY, tempZ, currentAngleX, currentAngleY, currentAngleZ, totalTime);
        putsXBee(buf, strlen(buf));
    }

    if (SEND_TO_FPGA) {
        //X Angle Desired  $00
        sendFPGAData(0x00, 0x00);

        //X Angle Measured  $01
        sendFPGAData(0x01, (UINT8)currentAngleX);

        //Y Angle Desired  $02
        sendFPGAData(0x02, 0x00);

        //Y Angle Measured  $03
        sendFPGAData(0x03, (UINT8)currentAngleY);

        //Z Angle Desired  $04
        sendFPGAData(0x04, 0x00);

        //Z Angle Measured  $05
        sendFPGAData(0x05, (UINT8)currentAngleZ);

        //Altitude Desired $06 (30)
        sendFPGAData(0x06, 0x1E);
    }

    // Dump Angles to FPGA

    // Store Previous Values
    lastAngleX = currentAngleX;
    lastAngleY = currentAngleY;
    lastAngleZ = currentAngleZ;
}