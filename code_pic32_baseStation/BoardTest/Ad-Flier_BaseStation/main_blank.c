/* 
 * File:   main_blank.c
 * Author: David
 *
 * Created on April 7, 2012, 5:23 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <p32xxxx.h>
#include <plib.h> // This is necessory if functions from C32 library are used
                  // Also Register file for PIC32 Controllers is included

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

void initU2( void) {
    U2BRG = 2082; // initialize the baud rate generator @ 4800bps
    U2MODE = U_ENABLE; // initialize the UART module
    U2STA = U_TX; // enable the Transmitter
}

void initU5( void) {
    U5BRG = 1041; // initialize the baud rate generator
    U5MODE = U_ENABLE; // initialize the UART module
    U5STA = U_TX; // enable the Transmitter
}

int putU2( int c) {
    while ( U2STAbits.UTXBF); // wait while Tx buffer full
    U2TXREG = c;
    return c;
}

int putU5( int c) {
    while ( U5STAbits.UTXBF); // wait while Tx buffer full
    U5TXREG = c;
    return c;
}

char getU2( void) {
    while ( !U2STAbits.URXDA); // wait for a new char to arrive
    return U2RXREG; // read char from receive buffer
}




// Main Application
int main(int argc, char** argv) {

    // Setup Main System
    SYSTEMConfigPerformance(80000000L);
    DDPCONbits.JTAGEN = 0;

    char c;
    // 1. init the UART2 serial port
    initU2();
    initU5();

    // 2. prompt
    putU5('>');

    // 3. main loop
    while ( 1) {
        // 3.1 wait for a character
        c = getU2();

        // 3.2 echo the character
        putU5( c);
    }


    return (EXIT_SUCCESS);
}