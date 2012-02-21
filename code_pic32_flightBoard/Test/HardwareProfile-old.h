/*********************************************************************
 *
 *	Hardware specific definitions
 *
 *********************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    None
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:        Microchip C32 v1.00 or higher
 *					Microchip C30 v3.01 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright © 2002-2008 Microchip Technology Inc.  All rights 
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and 
 * distribute: 
 * (i)  the Software when embedded on a Microchip microcontroller or 
 *      digital signal controller product (“Device”) which is 
 *      integrated into Licensee’s product; or
 * (ii) ONLY the Software driver source files ENC28J60.c and 
 *      ENC28J60.h ported to a non-Microchip device used in 
 *      conjunction with a Microchip ethernet controller for the 
 *      sole purpose of interfacing with the ethernet controller. 
 *
 * You should refer to the license agreement accompanying this 
 * Software for additional information regarding your rights and 
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT 
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT 
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A 
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL 
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR 
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF 
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS 
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE 
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER 
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT 
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		10/03/06	Original, copied from Compiler.h
 ********************************************************************/
#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H



// Define the baud rate constants
    #define BAUDRATE2       57600UL
    #define BRG_DIV2        4 
    #define BRGH2           1 

    #include <plib.h>
    #include <uart2.h>

/*********************************************************************
* GetSystemClock() returns system clock frequency.
*
* GetPeripheralClock() returns peripheral clock frequency.
*
* GetInstructionClock() returns instruction clock frequency.
*
********************************************************************/

/*********************************************************************
* Macro: #define	GetSystemClock() 
*
* Overview: This macro returns the system clock frequency in Hertz.
*			* value is 8 MHz/2 x 20 PLL for PIC32
*
********************************************************************/
#define GetSystemClock() 			(80000000ul)
/*********************************************************************
* Macro: #define	GetPeripheralClock() 
*
* Overview: This macro returns the peripheral clock frequency 
*			used in Hertz.
*			* value for PIC24 is <PRE>(GetSystemClock()/2) </PRE> 
*			* value for PIC32 is <PRE>(GetSystemClock()/(1<<OSCCONbits.PBDIV)) </PRE>
*
********************************************************************/
#define	GetPeripheralClock()		(GetSystemClock()/(1<<OSCCONbits.PBDIV))
/*********************************************************************

/*********************************************************************
* IOS FOR THE DISPLAY CONTROLLER
*********************************************************************/

// Definitions for reset pin
#define RST_TRIS_BIT       TRISCbits.TRISC1
#define RST_LAT_BIT        LATCbits.LATC1

// Definitions for RS pin
#define RS_TRIS_BIT        TRISBbits.TRISB15
#define RS_LAT_BIT         LATBbits.LATB15

// Definitions for CS pin
#define CS_TRIS_BIT        TRISFbits.TRISF12
#define CS_LAT_BIT         LATFbits.LATF12

// Definitions for FLASH CS pin 
#define CS_FLASH_LAT_BIT   LATCbits.LATC2
#define CS_FLASH_TRIS_BIT  TRISCbits.TRISC2

// Definitions for Backlight power pin 
#define POWERON_LAT_BIT   LATDbits.LATD2
#define POWERON_TRIS_BIT  TRISDbits.TRISD2




/*********************************************************************
* IOS FOR THE FLASH/EEPROM SPI
*********************************************************************/
/*********************************************************************
* IOS FOR THE TOUCH SCREEN
*********************************************************************/
#define ADC_XPOS        ADC_CH0_POS_SAMPLEA_AN11
#define ADC_YPOS        ADC_CH0_POS_SAMPLEA_AN10

// X port definitions
#define ADPCFG_XPOS     AD1PCFGbits.PCFG13
#define LAT_XNEG        LATBbits.LATB11
#define LAT_XPOS        LATBbits.LATB13
#define TRIS_XNEG       TRISBbits.TRISB11
#define TRIS_XPOS       TRISBbits.TRISB13

// Y port definitions
#define ADPCFG_YPOS     AD1PCFGbits.PCFG12
#define LAT_YNEG        LATBbits.LATB10  
#define LAT_YPOS        LATBbits.LATB12 
#define TRIS_YNEG       TRISBbits.TRISB10
#define TRIS_YPOS       TRISBbits.TRISB12 

/*********************************************************************
* IOS FOR THE SIDE BUTTONS
*********************************************************************/

#define BTN_A PORTBbits.RB0
#define BTN_B PORTBbits.RB1
#define BTN_C PORTBbits.RB2
#define BTN_D PORTBbits.RB3
#define BTN_CP PORTAbits.RA10

/*********************************************************************
* IOS FOR THE LEDs
*********************************************************************/

#define LD0 LATAbits.LATA0
#define LD1 LATAbits.LATA1
#define LD2 LATAbits.LATA2
#define LD3 LATAbits.LATA3

#define TRIS_LD0 TRISAbits.TRISA0
#define TRIS_LD1 TRISAbits.TRISA1
#define TRIS_LD2 TRISAbits.TRISA2
#define TRIS_LD3 TRISAbits.TRISA3

/*********************************************************************
* IOS FOR THE SD/MMC CARD INTERFACE
*********************************************************************/

#define USE_SD_INTERFACE_WITH_SPI

        // Registers for the SPI module 
        #define MDD_USE_SPI_2

		//SPI Configuration
		#define SPI_START_CFG_1     (PRI_PRESCAL_64_1 | SEC_PRESCAL_8_1 | MASTER_ENABLE_ON | SPI_CKE_ON | SPI_SMP_ON)
        #define SPI_START_CFG_2     (SPI_ENABLE)

        // Define the SPI frequency
        #define SPI_FREQUENCY			(20000000)


        // Description: SD-SPI Chip Select Output bit
        #define SD_CS               LATGbits.LATG9
        // Description: SD-SPI Chip Select TRIS bit
        #define SD_CS_TRIS          TRISGbits.TRISG9

        // Description: SD-SPI Card Detect Input bit
        #define SD_CD               PORTAbits.RA6
        // Description: SD-SPI Card Detect TRIS bit
        #define SD_CD_TRIS          TRISAbits.TRISA6

        // Description: SD-SPI Write Protect Check Input bit
        #define SD_WE               PORTAbits.RA7
        // Description: SD-SPI Write Protect Check TRIS bit
        #define SD_WE_TRIS          TRISAbits.TRISA7

        // Description: The main SPI control register
        #define SPICON1             SPI2CON
        // Description: The SPI status register
        #define SPISTAT             SPI2STAT
        // Description: The SPI Buffer
        #define SPIBUF              SPI2BUF
        // Description: The receive buffer full bit in the SPI status register
        #define SPISTAT_RBF         SPI2STATbits.SPIRBF
        // Description: The bitwise define for the SPI control register (i.e. _____bits)
        #define SPICON1bits         SPI2CONbits
        // Description: The bitwise define for the SPI status register (i.e. _____bits)
        #define SPISTATbits         SPI2STATbits
        // Description: The enable bit for the SPI module
        #define SPIENABLE           SPI2CONbits.ON
        // Description: The definition for the SPI baud rate generator register (PIC32)
        #define SPIBRG			    SPI2BRG

        // Tris pins for SCK/SDI/SDO lines

//        // Description: The TRIS bit for the SCK pin
//        #define SPICLOCK            TRISGbits.TRISG6
//        // Description: The TRIS bit for the SDI pin
//        #define SPIIN               TRISGbits.TRISG7
//        // Description: The TRIS bit for the SDO pin
//        #define SPIOUT              TRISGbits.TRISG8
//        
        //SPI library functions
        #define putcSPI             putcSPI2
        #define getcSPI             getcSPI2
        #define OpenSPI(config1, config2)   OpenSPI2(config1, config2)

    // Will generate an error if the clock speed is too low to interface to the card
    #if (GetSystemClock() < 100000)
        #error Clock speed must exceed 100 kHz
    #endif


#endif // __HARDWARE_PROFILE_H
