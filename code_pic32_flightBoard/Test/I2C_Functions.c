#include <plib.h>
#include "SerialEEPROM.h"
#include "HardwareProfile.h"        // GetPeripheralClock()

#define PAGESIZE    8               // page size for 24LC01
#define PAGEMASK    (PAGESIZE-1)
#define BUSFRQ      100000ul          // 100kHz
/************************************************************************
* Function: EEPROMInit2()
*
* Overview: this function setups the I2C1 interface
*
* Input: none
*
* Output: none
*
************************************************************************/
void EEPROMInit2()
{  // Configure I2C for 7 bit address mode
    int delay;

    CloseI2C2();
    OpenI2C2( I2C_ON | I2C_IDLE_CON | I2C_7BIT_ADD | I2C_STR_EN,
            (GetPeripheralClock()/(2*BUSFRQ))-1);

    IdleI2C2();

    // approx 1ms delay
    for( delay = 0; delay < (GetSystemClock()/5/80000ul); delay++);

} // EEPROMInit


int addressSEE2( long add)
// send the address selection command
// repeat if SEE busy
{

    // 3. send address LSB, bit 0-7
    MasterWriteI2C2( add);
    IdleI2C2();

    // 4. exit returning the cmd byte
    return add;
} // addressSEE2

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
void EEPROMWriteByte2(BYTE data, WORD address)
{
    
    // 1. select address
    MasterWriteI2C2( address);
    IdleI2C2();

    // 2. stream data out
    MasterWriteI2C2( data & 0xFF);
    IdleI2C2();


    // 3. terminate the command sequence
    StopI2C2();
    IdleI2C2();

} // EEPROMWriteByte



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
BYTE EEPROMReadByte2(WORD address)
{
    int cmd, r;

    // 1. select address
    MasterWriteI2C2( address);

    StopI2C2();
    IdleI2C2();

    // 2. read command
    StartI2C2(); IdleI2C2();
    MasterWriteI2C2( address+READ_CMD);
    IdleI2C2();

    // 3. stream data in (will continue until NACK is sent)
    r = MasterReadI2C2( );

    // 4. terminate read sequence (send NACK then STOP)
    NotAckI2C2(); IdleI2C2();
    StopI2C2(); IdleI2C2();

    return r;
} // EEPROMReadByte


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
void EEPROMWriteWord2(WORD data, WORD address)
{
    int cmd;

    // 1. select address
    cmd = addressSEE2( address);

    // 2. stream data out
    MasterWriteI2C2( data & 0xFF);    //LSB
    IdleI2C2();

    MasterWriteI2C2( data >> 8);      // MSB
    IdleI2C2();

    // 3. terminate the command sequence
    StopI2C2();
    IdleI2C2();

} // EEPROMWriteWord


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
WORD EEPROMReadWord2(WORD address)
{
    int cmd, r;

    // 1. select address
    cmd = addressSEE2( address);

    StopI2C2();
    IdleI2C2();

    // 2. read command
    StartI2C2(); IdleI2C2();
    MasterWriteI2C2( cmd+READ_CMD);
    IdleI2C2();

    // 3. stream data in (will continue until NACK is sent)
    r= MasterReadI2C2( );

    AckI2C2(); IdleI2C2();
    r |= (MasterReadI2C2()<<8);

    // 4. terminate read sequence (send NACK then STOP)
    NotAckI2C1(); IdleI2C2();
    StopI2C1(); IdleI2C2();

    return r;
} // EEPROMReadWord


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
void EEPROMWriteEnable2()
{ // empty, there is no WriteEnable/Disable sequence on 24LC01 memories
}


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
BYTE EEPROMWriteArray2(DWORD address, BYTE* pData, WORD nCount)
{
    int cmd, i;

    //  0. repeat in pages
    while ( nCount > 0)
    {
        // 1. select address
        cmd = addressSEE2( address);

        // 2. (partial) page write
        do {
            MasterWriteI2C2( *pData++ );
            IdleI2C2();
            nCount--;
            address++;
        } while ((( address & PAGEMASK) !=0) && (nCount > 0));

        // 3. terminate the command sequence
        StopI2C2();
        IdleI2C2();
    } // page repeat

    // verify
    /// TBD

    return 1;   // success
} // EEPROMWriteArray


/************************************************************************
* Function: void EEPROMReadArray(WORD address, BYTE* pData, nCount)
*
* Overview: this function reads  data into buffer specified
*
* Input: flash memory address, pointer to the buffer, data number
*
************************************************************************/
void EEPROMReadArray2(WORD address, BYTE* pData, WORD nCount)
{
    int cmd, r;

    // 1. select address
    cmd = addressSEE2( address);

    StopI2C2();
    IdleI2C2();

    // 2. read command
    StartI2C2(); IdleI2C2();
    MasterWriteI2C2( cmd+READ_CMD);
    IdleI2C2();

    *pData++ = MasterReadI2C2( );
    nCount--;

    // 3. stream data in (will continue until NACK is sent)
    while ( nCount > 0)
    {
        AckI2C2(); IdleI2C2();
        *pData++ = MasterReadI2C2( );
        nCount--;
    }

    // 4. terminate read sequence (send NACK then STOP)
    NotAckI2C2(); IdleI2C2();
    StopI2C2(); IdleI2C2();

} // EEPROMReadArray


