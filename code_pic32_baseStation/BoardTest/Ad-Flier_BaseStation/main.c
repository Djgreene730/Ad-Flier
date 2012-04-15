/*
 *  Project:    The Ad-Flier! - Base Station Board
 *  Date:       April 11, 2012
 *  Author:     Team SkyLights
 */


// Main Includes
#include <stdio.h>
#include <stdlib.h>
#include <p32xxxx.h>
#include <plib.h>
#include <Communications.h>

// Device Configuration
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
#pragma config CP = OFF, BWP = OFF, PWP = OFF, DEBUG = ON, ICESEL = ICS_PGx1

// Global System Defines
#define SYS_FREQ 		(80000000L)


unsigned int main() {
    
    // Configure System & Disable JTAG
    SYSTEMConfig(SYS_FREQ, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);
    mJTAGPortEnable(DEBUG_JTAGPORT_OFF);

    // Test output of Parallel Port to FPGA
    TRISE = 0x00;   // Make PORTD as output port
    LATE=0xFFFF;    // Set all High

    // Databus Output
    char dataBus = 0;

    while(1) {
        // Long Loop
        for(int i = 0; i < 4000000; i++);

        // Loop Databus from [ 0x00 - 0xFF ]
        LATE = dataBus;
        dataBus++;
    }
    return 1;
}
