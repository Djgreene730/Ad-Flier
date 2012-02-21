#ifndef _EEPROM_H
#define _EEPROM_H

#include "GenericTypeDefs.h"

/************************************************************************
* EEPROM Commands
************************************************************************/
#define READ_CMD    1
#define WRITE_CMD   0

/************************************************************************
* Function: EEPROMInit()
*
* Overview: this function setups SPI and IOs connected to EEPROM
*
* Input: none
*
* Output: none
*
************************************************************************/
void EEPROMInit2();

/************************************************************************
* Function: void EEPROMWriteByte()
*
* Overview: this function writes a byte to the address specified
*
* Input: byte to be written and address
*
* Output: none
*
************************************************************************/
void EEPROMWriteByte2(BYTE data, WORD address);

/************************************************************************
* Function: BYTE EEPROMReadByte(WORD address)
*
* Overview: this function reads a byte from the address specified
*
* Input: address
*
* Output: data read
*
************************************************************************/
BYTE EEPROMReadByte2(WORD address);

/************************************************************************
* Function: void EEPROMWriteWord(WODR data, WORD address)
*
* Overview: this function writes a 16-bit word to the address specified
*
* Input: data to be written and address
*
* Output: none
*
************************************************************************/
void EEPROMWriteWord2(WORD data, WORD address);

/************************************************************************
* Function: WORD EEPROMReadWord(WORD address)
*
* Overview: this function reads a 16-bit word from the address specified
*
* Input: address
*
* Output: data read
*
************************************************************************/
WORD EEPROMReadWord2(WORD address);

/************************************************************************
* Function: EEPROMWriteEnable()
*
* Overview: this function allows writing into EEPROM. Must be called
*           before every write/erase command
*
* Input: none
*
* Output: none
*
************************************************************************/
void EEPROMWriteEnable2();

/************************************************************************
* Function: BYTE EEPROMWriteArray(DWORD address, BYTE* pData, nCount)
*
* Overview: this function writes data array at the address specified
*
* Input: flash memory address, pointer to the data array, data number
*
* Output: return 1 if the operation was successfull
*
************************************************************************/
BYTE EEPROMWriteArray2(DWORD address, BYTE* pData, WORD nCount);

/************************************************************************
* Function: void EEPROMReadArray(WORD address, BYTE* pData, nCount)
*
* Overview: this function reads  data into buffer specified
*
* Input: flash memory address, pointer to the buffer, data number
*
************************************************************************/
void EEPROMReadArray2(WORD address, BYTE* pData, WORD nCount);


#endif //_EEPROM_H


