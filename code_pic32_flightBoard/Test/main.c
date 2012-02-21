/*****************************************************************************
 * MikroE MMB testing project
 * 
 *****************************************************************************
 * FileName:        Main.c
 * Dependencies:    
 * Processor:       PIC32
 * Compiler:       	MPLAB C32
 * Linker:          MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 *****************************************************************************
 *
** MikroE MMB - Generic Demo template
**
** 8/17/09 rev 1.0  LDJ Testing on MikroE-MMB
** 11/18/09 rev 2.0 LDJ Testing v5
** 12/08/09 rev 2.2 LDJ Update to GFX lib v.2.0
** HW req.: mikroMMB for PIC32: http://www.mikroe.com/eng/products/view/595/mikrommb-for-pic32-board/
** SW req.: Graphics lib 2.00 or later
**
*/

#include <plib.h>
#include "MMB.h"
#include "LCDTerminal.h"
#include "Graphics\Graphics.h"
#include "MDD File System\FSIO.h"
#include "SerialFLash.h"
#include "GenericTypeDefs.h"
#include "I2C_Functions.h"
//#include "Sensors.h"

// Configuration bits 
#pragma config POSCMOD = XT, FNOSC = PRIPLL, FSOSCEN = ON
#pragma config FPLLIDIV = DIV_2, FPLLMUL = MUL_20, FPLLODIV = DIV_1, FPBDIV = DIV_1
#pragma config OSCIOFNC = ON, CP = OFF, BWP = OFF, PWP = OFF


// fonts
extern const FONT_FLASH TerminalFont;

int main( void) {
    char s[128];
	BYTE write_array[16] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
	BYTE read_array[16] = {0};
	SHORT success;
    int w,i;
    float fTemp;

//    SearchRec rec;

    //-------------------------------------------------------------
    // initializations
    MMBInit();          // initialize the MikroE MMB board
    LCDInit();

    //Setup I2C
    EEPROMInit2();
    EEPROMWriteByte2(0x02, 0x1E);
    EEPROMWriteByte2(0x00, 0x1E);

    //-------------------------------------------------------------
    // Show Splash Screen
    SetColor( BRIGHTRED);        
    LCDCenterString( -1, "Ad Flier - Sensors Test");
    LCDCenterString(  0, "David Greene - V1.0");
    SetColor( WHITE);
    MMBFadeIn( 250);    
    DelayMs(2000);
    
// main loop
	while( 1)
	{      
       
        // clear screen and start from the top 
        LCDClear();

        LCDPutString("Board Temperature: ");
        char buffer[10];
        sprintf(buffer, "%3.1fC\n\n", MMBGetTdegC());
        LCDPutString(buffer);


        LCDPutString( "LCD Display:\t");
        LCDPutString( "Pass\n");
            
    //-------------------------------------------------------------
        // Serial FLASH test
        LCDPutString( "Serial FLASH:\t?");
    	SFLASHInit();
		SFLASHWriteArray(0x0000,write_array,16);
		SFLASHReadArray(0x0000, read_array,16);
		success = 1;
      	for (i = 0; i<16; i++){
         if (read_array[i] != write_array[i]){
          success = 0;
          break;
        	}
      	}

        if (success = 1)
            LCDPutString( "\bPass\n");
        else
            LCDPutString( "\bFail\n");
        
   
    //-------------------------------------------------------------
        // Digital Compass Test

        //Select X Register
        

        //Grab Values
        int x, y, z;
        x = EEPROMReadByte2(0x1E) << 8;
        x |= EEPROMReadByte2(0x1E);

        z = EEPROMReadByte2(0x1E) << 8;
        z |= EEPROMReadByte2(0x1E);

        y = EEPROMReadByte2(0x1E) << 8;
        y |= EEPROMReadByte2(0x1E);

        char buffer2[20];
        sprintf(buffer2, "Magnetometer:\t%d, %d, %d\n", x, y, z);
        LCDPutString(buffer2);




        LCDPutString( "Test Done");

        DelayMs(500);

        
    } // main loop
} // main




