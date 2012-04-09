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
#include <plib.h> // This is necessory if functions from C32 library are used
                  // Also Register file for PIC32 Controllers is included

#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
#pragma config CP = OFF, BWP = OFF, PWP = OFF, DEBUG = ON, ICESEL = ICS_PGx1




unsigned int g_u_i32_counter; // g for global data
                              // u for unsigned
                              // i32 tells 32 data
                              // Follow this standard, it helps to find bug in large programs
                              // if any, as it gives whole information about variable where
                              // it is used.
unsigned int main()
{
	TRISE = 0x00; // Make PORTD as output port

	LATE=0xFFFF; // PORTD = 0xFFFF is valid but it is recommanded while writing to any PORT
                 // Use LATx register. As it allows high speed data output on the port

	while(1)// Super loop
	{	
		for(g_u_i32_counter=0;g_u_i32_counter<60000;g_u_i32_counter++);
		LATE = ~PORTE;// Toggle Port
	}
	return 1;
}



