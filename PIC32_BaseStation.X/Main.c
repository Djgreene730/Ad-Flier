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
#include <float.h>
#include "Ad-Flier_Pins.h"
#include "Communications.h"
#include "Gyroscope.h"
#include "RTCC.h"

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

    // Initialize System Pins
    initializeAllPins();

    // Initialize the Real Time Clock
    initializeRTCC();

    // Initialize Communication Systems
    initializeUART();

    // Configure for multi-vectored mode & Enable Interrupts
    INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);
    INTEnableInterrupts();

    // Configure XBee
    xbee_baud.size = 1;     strcpy(xbee_baud.data, "6");
    xbee_channel.size = 2;  strcpy(xbee_channel.data, "15");
    xbee_network.size = 4;  strcpy(xbee_network.data, "3421");
    configureXBee(xbee_baud, xbee_channel, xbee_network);

    // Loop Infinitely
    while(1) {
        // Update Terminal Every Second, using the RTCC
        //while(!RtccGetSync());

        // Update Termina Every 300mS
        Delayms(200);



/*
        //Copy new GPS string to Globals
        if (gpsTempBuf.ready == 1) {

            // Copy GPS TempBuf to Sentence
            UINT8 gpsGGAPosition = 0;
            UINT8 ggaPosition = 0;

            int i = 0;
            for (i = 0; i < gpsTempBuf.size; i++) {
                gpsTempBuf.data[i] = gpsTempBuf.data[i];

                // Parse specific GPS Data
                if (gpsTempBuf.data[i] == ',') {
                    gpsGGAPosition++;
                    ggaPosition = 0;
                }

                char temp[1] = { gpsTempBuf.data[i] };
                if (gpsTempBuf.data[i] != ',') {
                    switch(gpsGGAPosition) {
                        case 1:
                            gpsBaseCurrent.time.data[ggaPosition] = gpsTempBuf.data[i];
                            gpsBaseCurrent.time.size++;
                            ggaPosition++;
                            break;
                        case 2:
                            gpsBaseCurrent.Latitude.data[ggaPosition] = gpsTempBuf.data[i];
                            gpsBaseCurrent.Latitude.size++;
                            ggaPosition++;
                            break;
                        case 3:
                            gpsBaseCurrent.Longitude.data[ggaPosition] = gpsTempBuf.data[i];
                            gpsBaseCurrent.Longitude.size++;
                            ggaPosition++;
                            break;
                        case 4:
                            gpsBaseCurrent.Fix = atoi(temp);
                            ggaPosition++;
                            break;
                        case 5:
                            gpsBaseCurrent.NumSatellites = atoi(temp);
                            ggaPosition++;
                            break;
                        case 6:
                            gpsBaseCurrent.HorizontalDilution.data[ggaPosition] = gpsTempBuf.data[i];
                            gpsBaseCurrent.HorizontalDilution.size++;
                            ggaPosition++;
                            break;
                        case 7:
                            gpsBaseCurrent.Altitude.data[ggaPosition] = gpsTempBuf.data[i];
                            gpsBaseCurrent.Altitude.size++;
                            ggaPosition++;
                            break;
                        case 8:
                            gpsBaseCurrent.HeightOfGeoid.data[ggaPosition] = gpsTempBuf.data[i];
                            gpsBaseCurrent.HeightOfGeoid.size++;
                            ggaPosition++;
                            break;
                        default:
                            break;
                    }
                }
            }

            // Update System Time
            DFloat currentTime;
            currentTime.timeBytes.RSV = 0x0000;
            currentTime.timeBytes.HU = gpsBaseCurrent.time.data[0];
            currentTime.timeBytes.HL = gpsBaseCurrent.time.data[1];
            currentTime.timeBytes.MU = gpsBaseCurrent.time.data[2];
            currentTime.timeBytes.ML = gpsBaseCurrent.time.data[3];
            currentTime.timeBytes.SU = gpsBaseCurrent.time.data[4];
            currentTime.timeBytes.SL = gpsBaseCurrent.time.data[5];
            RtccSetTimeDate(currentTime.UValue, 0);
        }
 */
        
        // Create Temporary Variables
        UINT8       buf[1024];
        rtccTime    tempTime;

        // Perform Gyroscope Calculations
        float tempX = (float) gyroCurrent.Signed.X;
        tempX = 500 * (tempX / (1 << 15));
        //tempX = 500 * (tempX / 32768);

        float tempY = (float) gyroCurrent.Signed.Y;
        tempY = 500 * (tempY / (1 << 15));
        //tempY = 500 * (tempY / 32768);

        float tempZ = (float) gyroCurrent.Signed.Z;
        tempZ = 500 * (tempZ / (1 << 15));
        //tempZ = 500 * (tempZ / 32768);
        
        // Perform Accelerometer Calculations
        float tempAX = (float) accelCurrent.Signed.X;
        tempAX = (2 * (tempAX / (1 << 11))) + 0.0000001;
        //tempAX = (2 * (tempAX / 2048));// + 0.0000001;

        float tempAY = (float) accelCurrent.Signed.Y;
        tempAY = (2 * (tempAY / (1 << 11))) + 0.0000001;
        //tempAY = (2 * (tempAY / 2048));// + 0.0000001;

        float tempAZ = (float) accelCurrent.Signed.Z;
        tempAZ = (2 * (tempAZ / (1 << 11))) + 0.0000001;
        //tempAZ = (2 * (tempAZ / 2048));// + 0.0000001;

        // Convert Accelerometer G's to Angles
        float angleAccelX = 57.2957795 * atanf(tempAX / sqrtf(powf(tempAY, 2) + powf(tempAZ, 2)));
        float angleAccelY = 57.2957795 * atanf(tempAY / sqrtf(powf(tempAX, 2) + powf(tempAZ, 2)));

        // Match Current Angle with Calculated
        sprintf(buf, "-- (%+07.2f, %+07.2f, %+07.2f, %+07.2f) (%+07.2f, %+07.2f, %+07.2f, %+07.2f) (%+07.2f, %+07.2f, %+07.2f) %02dmS %02dC \r\n", tempX, tempAX, angleAccelX, angleCurrent.X.Value, tempY, tempAY, angleAccelY, angleCurrent.Y.Value, tempZ, tempAZ, angleCurrent.Z.Value, angleCurrent.T, gyroCurrent.TU);


        // Working, Shows Gyroscope Calculated Angles!
        //sprintf(buf, "Gyro: %+08.3f, %+08.3f, %+08.3f\r\n", tempX, tempY, tempZ);

        // Get Current Time
        //tempTime.l=RtccGetTime();

        // Format String
        //sprintf(buf, "Gyro: %07f, %07f, %07f | Acl: %07.3f, %07.3f, %07.3f | Ang: %03.3f, %03.3f, %03.3f | UT: %02d mS | BST: %02x:%02x:%02x | FCT: %02x:%02x:%02x\r\n", tempX, tempY, tempZ, accelCurrent.X, accelCurrent.Y, accelCurrent.Z, angleCurrent.X.Value, angleCurrent.Y.Value, angleCurrent.Z.Value, angleCurrent.T, tempTime.hour, tempTime.min, tempTime.sec, timeFCBCurrent.hour, timeFCBCurrent.min, timeFCBCurrent.sec);

        // Place on Bluetooth
        putsBluetooth(buf, strlen(buf));
    }

    return (EXIT_SUCCESS);
}