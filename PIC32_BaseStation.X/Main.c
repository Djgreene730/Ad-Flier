/*
 * File:   main_blank.c
 * Author: David
 *
 * Created on April 7, 2012, 5:23 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <p32xxxx.h>
#include <plib.h>
#include <math.h>
#include "Ad-Flier_Pins.h"
#include "Communications.h"
#include "Gyroscope.h"



#pragma config FNOSC = PRIPLL       // Oscillator Selection
#pragma config FPLLIDIV = DIV_2     // PLL Input Divider (PIC32MX Starter Kit: use divide by 2 only)
#pragma config FPLLMUL = MUL_20     // PLL Multiplier
#pragma config FPLLODIV = DIV_1     // PLL Output Divider
#pragma config FPBDIV = DIV_2       // Peripheral Clock divisor
#pragma config FWDTEN = OFF         // Watchdog Timer
#pragma config WDTPS = PS1          // Watchdog Timer Postscale
#pragma config FCKSM = CSDCMD       // Clock Switching & Fail Safe Clock Monitor
#pragma config OSCIOFNC = OFF       // CLKO Enable
#pragma config POSCMOD = XT         // Primary Oscillator
#pragma config IESO = OFF           // Internal/External Switch-over
#pragma config FSOSCEN = OFF        // Secondary Oscillator Enable
#pragma config CP = OFF             // Code Protect
#pragma config BWP = OFF            // Boot Flash Write Protect
#pragma config PWP = OFF            // Program Flash Write Protect
#pragma config ICESEL = ICS_PGx1    // ICE/ICD Comm Channel Select
#pragma config DEBUG = ON          // Debugger Disabled for Starter Kit



// Main Application
int main(int argc, char** argv) {

    // Setup Main System
    SYSTEMConfigPerformance(80000000L);
    DDPCONbits.JTAGEN = 0;

    // Configure for multi-vectored mode & Enable Interrupts
    INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);
    INTEnableInterrupts();

    // Initialize System Pins
    initializeAllPins();

    // Initialize Communication Systems
    initializeUART();

    // Configure XBee
    xbee_baud.size = 1;     strcpy(xbee_baud.data, "6");
    xbee_channel.size = 2;  strcpy(xbee_channel.data, "15");
    xbee_network.size = 4;  strcpy(xbee_network.data, "3421");
    configureXBee(xbee_baud, xbee_channel, xbee_network);

    UINT8 buf[1024];
    float angleAccelX, angleAccelY;
    float currentAngleX, lastAngleX;
    float currentAngleY, lastAngleY;
    float currentAngleZ, lastAngleZ;
    BOOL firstRun = 0;

    // Loop Infinitely
    while(1) {
        /*
        // Get Updated Accelerometer Readings
        while (accelTempBuf.ready == 0);

        float tempAX = (short)accelCurrent.X;
        tempAX = 4 * (tempAX / 256);
            
        float tempAY = (short)accelCurrent.Y;
        tempAY = 4 * (tempAY / 256);

        float tempAZ = (short)accelCurrent.Z;
        tempAZ = 4 * (tempAZ / 256);


        // Get Updated Gyroscope Readings
        while (gyroTempBuf.ready == 0);

        float tempX = (short)gyroCurrent.Y;
        tempX = -1000 * (tempX / 65536);
            
        float tempY = (short)gyroCurrent.X;
        tempY = -1000 * (tempY / 65536);

        float tempZ = (short)gyroCurrent.Z;
        tempZ = 1000 * (tempZ / 65536);


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


        // Output to Screen
        sprintf(buf, "AX: %3.4f, AY: %3.4f, AZ: %3.4f\tGX: %3.4f, GY: %3.4f, GZ: %3.4f\tPX: %3.4f, PY: %3.4f, PZ: %3.4f\r\n", tempAX, tempAY, tempAZ, tempX, tempY, tempZ, currentAngleX, currentAngleY, currentAngleZ);
        putsBluetooth(buf, strlen(buf));

        // Store Previous Values
        lastAngleX = currentAngleX;
        lastAngleY = currentAngleY;
        lastAngleZ = currentAngleZ;
        
        Delayms(100);

        /*

        // Send Gyroscope Reading to XBee
        Delayms(100);
        gyroReading[0] = readGyroscope(WHO_AM_I);
        putsXBee(gyroReading, 1);

        Delayms(100);
        gyroReading[0] = readGyroscope(OUT_TEMP);
        putsXBee(gyroReading, 1);

        */
    }


    return (EXIT_SUCCESS);
}