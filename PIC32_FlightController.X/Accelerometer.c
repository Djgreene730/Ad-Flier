/*
 *  The Ad-Flier! - MMA8452Q Accelerometer Source File
 *  Team SkyLights, Senior Design, Spring 2012
 *
*/

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>
#include "Ad-Flier_Pins.h"
#include "Communications.h"
#include "Accelerometer.h"

// Local Variables
UINT8 Addr_Accel_WR = 0x3A;
UINT8 Addr_Accel_RD = 0x3B;

// Setup Accelerometer Configuration
void     setupAccelerometer() {

}

// Read Register on Accelerometer
UINT8    readAccelerometer(AccelerometerAddress address) {
    // Check if I2C is Started
    if (!I2C_IS_Initialized) initializeI2C();

    BOOL    Success = TRUE;
    UINT8   tempData = 0;

    // Start the transfer to read the EEPROM.
    IdleI2C1();
    if(!I2C_StartTransfer(FALSE)) while(1);

    // Send the Device Address & Read Bit
    if (!I2C_TransmitOneByte(Addr_Accel_WR)) return 0xFA;

    //Proceed if the Device ACK'ed.
    if (Success) {
        // Send the Address & Read Bit
        if (!I2C_TransmitOneByte(address)) return 0xFE;

        // Proceed if Success = True...
        if (Success) {
            // Send Restart Command to I2C
            IdleI2C1();
            if( !I2C_StartTransfer(TRUE) ) while(1);

            // Send the Device Address & Read Bit
            if (!I2C_TransmitOneByte(Addr_Accel_RD)) return 0xFD;

            // Get Data Byte from Device
            if (Success) {
                // Check for Overflow Error
                if(I2CReceiverEnable(I2C1, TRUE) == I2C_RECEIVE_OVERFLOW) return 0xFC;
                else {
                    // Grab Data when Ready
                    while(!I2CReceivedDataIsAvailable(I2C1));
                    tempData = I2CGetByte(I2C1);

                    // Send NACK
                    I2CAcknowledgeByte ( I2C1, FALSE );

                }
            }
        }
    }

    // Stop Transfer and Return Data
    I2C_StopTransfer();
    return tempData;
}

// Write to Register on Accelerometer
void     writeAccelerometer(AccelerometerAddress address, UINT8 data) {

}

// Update Accelerometer Readings
void     updateAccelerometerReadings (void) {

}


/*
    UINT8               i2cData[10];
    I2C_7_BIT_ADDRESS   SlaveAddress;
    int                 Index;
    int                 DataSz;

    BOOL                Acknowledged;
    BOOL                Success = TRUE;
    UINT8               i2cbyte;
    //
    // Send the data to EEPROM to program one location
    //

    // Initialize the data buffer
    I2C_FORMAT_7_BIT_ADDRESS(SlaveAddress, EEPROM_ADDRESS, I2C_WRITE);
    i2cData[0] = SlaveAddress.byte;
    i2cData[1] = 0x05;              // EEPROM location to program (high address byte)
    i2cData[2] = 0x40;              // EEPROM location to program (low address byte)
    i2cData[3] = 0xAA;              // Data to write
    DataSz = 4;

    // Start the transfer to write data to the EEPROM
    if( !StartTransfer(FALSE) )
    {
        while(1);
    }

    // Transmit all data
    Index = 0;
    while( Success && (Index < DataSz) )
    {
        // Transmit a byte
        if (TransmitOneByte(i2cData[Index]))
        {
            // Advance to the next byte
            Index++;

            // Verify that the byte was acknowledged
            if(!I2CByteWasAcknowledged(EEPROM_I2C_BUS))
            {
                DBPRINTF("Error: Sent byte was not acknowledged\n");
                Success = FALSE;
            }
        }
        else
        {
            Success = FALSE;
        }
    }

    // End the transfer (hang here if an error occured)
    StopTransfer();
    if(!Success)
    {
        while(1);
    }


    // Wait for EEPROM to complete write process, by polling the ack status.
    Acknowledged = FALSE;
    do
    {
        // Start the transfer to address the EEPROM
        if( !StartTransfer(FALSE) )
        {
            while(1);
        }

        // Transmit just the EEPROM's address
        if (TransmitOneByte(SlaveAddress.byte))
        {
            // Check to see if the byte was acknowledged
            Acknowledged = I2CByteWasAcknowledged(EEPROM_I2C_BUS);
        }
        else
        {
            Success = FALSE;
        }

        // End the transfer (stop here if an error occured)
        StopTransfer();
        if(!Success)
        {
            while(1);
        }

    } while (Acknowledged != TRUE);


    //
    // Read the data back from the EEPROM.
    //

    // Initialize the data buffer
    I2C_FORMAT_7_BIT_ADDRESS(SlaveAddress, EEPROM_ADDRESS, I2C_WRITE);
    i2cData[0] = SlaveAddress.byte;
    i2cData[1] = 0x05;              // EEPROM location to read (high address byte)
    i2cData[2] = 0x40;              // EEPROM location to read (low address byte)
    DataSz = 3;

    // Start the transfer to read the EEPROM.
    if( !StartTransfer(FALSE) )
    {
        while(1);
    }

    // Address the EEPROM.
    Index = 0;
    while( Success & (Index < DataSz) )
    {
        // Transmit a byte
        if (TransmitOneByte(i2cData[Index]))
        {
            // Advance to the next byte
            Index++;
        }
        else
        {
            Success = FALSE;
        }

        // Verify that the byte was acknowledged
        if(!I2CByteWasAcknowledged(EEPROM_I2C_BUS))
        {
            DBPRINTF("Error: Sent byte was not acknowledged\n");
            Success = FALSE;
        }
    }

    // Restart and send the EEPROM's internal address to switch to a read transfer
    if(Success)
    {
        // Send a Repeated Started condition
        if( !StartTransfer(TRUE) )
        {
            while(1);
        }

        // Transmit the address with the READ bit set
        I2C_FORMAT_7_BIT_ADDRESS(SlaveAddress, EEPROM_ADDRESS, I2C_READ);
        if (TransmitOneByte(SlaveAddress.byte))
        {
            // Verify that the byte was acknowledged
            if(!I2CByteWasAcknowledged(EEPROM_I2C_BUS))
            {
                DBPRINTF("Error: Sent byte was not acknowledged\n");
                Success = FALSE;
            }
        }
        else
        {
            Success = FALSE;
        }
    }

    // Read the data from the desired address
    if(Success)
    {
        if(I2CReceiverEnable(EEPROM_I2C_BUS, TRUE) == I2C_RECEIVE_OVERFLOW)
        {
            DBPRINTF("Error: I2C Receive Overflow\n");
            Success = FALSE;
        }
        else
        {
            while(!I2CReceivedDataIsAvailable(EEPROM_I2C_BUS));
            i2cbyte = I2CGetByte(EEPROM_I2C_BUS);
        }

    }

    // End the transfer (stop here if an error occured)
    StopTransfer();
    if(!Success)
    {
        while(1);
    }


    // Validate the data read
    if( i2cbyte != 0xAA )
    {
        DBPRINTF("Error: Verify failed\n");
    }
    else
    {
        DBPRINTF("Success\n");
    }

    // Example complete
    while(1);


}

*/