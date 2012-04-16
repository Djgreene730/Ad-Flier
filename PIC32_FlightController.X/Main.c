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

    // Initialize System Pins
    initializeAllPins();

    // Initialize Communication Systems
    //initializeUART();

    // Configure XBee
    //xbee_baud.size = 1;     strcpy(xbee_baud.data, "6");
    //xbee_channel.size = 2;  strcpy(xbee_channel.data, "15");
    //xbee_network.size = 4;  strcpy(xbee_network.data, "3421");
    //configureXBee(xbee_baud, xbee_channel, xbee_network);

    TRISFbits.TRISF8 = 0;
    PORTFbits.RF8 = 0;
    
    // Loop Infinitely
    while(1) {
        // GPS Sentence -> XBee Transmitter
        //rx_size = read_GPS_Sentence(buf, 1024);
        //putsXBee("Testing 1, 2, 3...\r", strlen("Testing 1, 2, 3...\r"));


        //  DO NOT USE!!!! CURRENTLY TESTING DELAYS


        LATFbits.LATF8 = !(PORTFbits.RF8 = 0);
        Delayus(1);

        LATFbits.LATF8 = !(PORTFbits.RF8 = 0);
        Delayus(10);

        LATFbits.LATF8 = !(PORTFbits.RF8 = 0);
        Delayus(100);

        LATFbits.LATF8 = !(PORTFbits.RF8 = 0);
        Delayus(1000);

        
    }


    return (EXIT_SUCCESS);
}