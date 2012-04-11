/*
	BlinkThatLED.com
	Author: Kiran Nevaskar(kirannevaskar@gmail.com)
	Kit Name: PIC32 Ethernet Starter Kit (Part Number: DM320004)
    Onboard Microcontroller: PIC32MX795F512L
 	Program Description: This program Blinks LEDs connected to PORTD
	Revision: v1.0 (2010-AUG-15)
*/

#include <stdio.h>
#include <stdlib.h>
#include <p32xxxx.h>
#include <plib.h>

#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
#pragma config CP = OFF, BWP = OFF, PWP = OFF, DEBUG = ON, ICESEL = ICS_PGx1

#define SYS_FREQ 		(80000000L)
#define	MIN_SPI_TXFER_SIZE		8		// min number of words per transfer
#define	MAX_SPI_TXFER_SIZE		512		// max number of words per transfer




// example functions prototypes
void	SpiInitDevice(SpiChannel chn, int isMaster, int frmEn, int frmMaster);

unsigned char   dataBus;
unsigned int    g_u_i32_counter; // g for global data
                              // u for unsigned
                              // i32 tells 32 data
                              // Follow this standard, it helps to find bug in large programs
                              // if any, as it gives whole information about variable where
                              // it is used.
unsigned int main()
{
SYSTEMConfig(SYS_FREQ, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);




        TRISE = 0x00; // Make PORTD as output port

	LATE=0xFFFF; // PORTD = 0xFFFF is valid but it is recommanded while writing to any PORT
                 // Use LATx register. As it allows high speed data output on the port

        dataBus = 0;

        SpiInitDevice(SPI_CHANNEL2, 1, 0, 0);	// initialize the SPI channel 1 as master, frame master

	while(1)// Super loop
	{	
		for(g_u_i32_counter=0;g_u_i32_counter<4000000;g_u_i32_counter++);
		LATE = dataBus;// Toggle Port
                SpiChnPutC(2, 0x55);		// send data on the master channel, SPI1
                SpiChnPutC(2, 0x54);		// send data on the master channel, SPI1
                dataBus++;
	}
	return 1;
}


/*********************************************************************
 * Function:        void	SpiInitDevice(SpiChannel chn, int isMaster, int frmEn, int frmMaster)
 *
 * PreCondition:    None
 *
 * Input:           chn			- the SPI channel to use
 * 					isMaster	-	1: the device is to act as a bus master
 * 									0: the device is an SPI slave
 * 					frmEn		-	1: frame mode is enabled
 * 								-	0: frame mode is disabled
 * 					frmMaster	-	0: if frame mode is enabled, the device is a frame slave (FRMSYNC is input)
 * 									1: if frame mode is enabled, the device is a frame master (FRMSYNC is output)
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Inits the SPI channel 1 to use 16 bit words
 * 					Performs the device initialization in both master/slave modes.
 *
 * Note:            None
 ********************************************************************/
void SpiInitDevice(SpiChannel chn, int isMaster, int frmEn, int frmMaster) {

    SpiOpenFlags	oFlags=SPI_OPEN_MODE16|SPI_OPEN_SMP_END;	// SPI open mode

    if(isMaster) {
        oFlags|=SPI_OPEN_MSTEN;
    }

    if(frmEn) {
        oFlags|=SPI_OPEN_FRMEN;
        if(!frmMaster) {
            oFlags|=SPI_OPEN_FSP_IN;
        }
    }

    SpiChnOpen(chn, oFlags, 4);	// divide fpb by 4, configure the I/O ports. Not using SS in this example
}