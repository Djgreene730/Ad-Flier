#include <GenericTypeDefs.h>
#include <plib.h>

#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
#pragma config CP = OFF, BWP = OFF, PWP = OFF, DEBUG = ON, ICESEL = ICS_PGx1

#define	GetSystemClock()                (80000000ul)
#define	GetPeripheralClock()		(GetSystemClock()/(1 << OSCCONbits.PBDIV))
#define	GetInstructionClock()		(GetSystemClock())


void SendDataBuffer(const char *buffer, UINT32 size);
UINT32 GetMenuChoice(void);
UINT32 GetDataBuffer(char *buffer, UINT32 max_size);
UINT32 GetDataBuffer2(char *buffer, UINT32 max_size);
UINT32 getSystemVoltage(void);

int CheckRtccRunning(int secWait);


const char mainMenu[] =
{
    "Welcome to PIC32 UART Peripheral Library Demo!\r\n"\
    "Here are the main menu choices\r\n"\
    "1. View Actual BAUD rate\r\n"\
    "2. Use AUTOBAUD\r\n"\
    "3. Set Line Control\r\n"\
    "4. ECHO\r\n"\
    "5. Get GPS Output\r\n"
    "\r\n\r\nPlease Choose a number\r\n"
};
const char lineMenu[] =
{
    "Line Control Menu\r\n"\
    "You may need to change your line control on your terminal to see data\r\n"\
    "1. 8-N-1\r\n"\
    "2. 8-E-1\r\n"\
    "3. 8-O-1\r\n"\
    "4. 8-N-2\r\n"\
    "5. 8-E-2\r\n"\
    "6. 8-O-2\r\n"\
    "\r\n\r\nPlease Choose a number\r\n"
};
const UINT32 lineControl[] =
{
    (UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1),
    (UART_DATA_SIZE_8_BITS | UART_PARITY_EVEN | UART_STOP_BITS_1),
    (UART_DATA_SIZE_8_BITS | UART_PARITY_ODD | UART_STOP_BITS_1),
    (UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_2),
    (UART_DATA_SIZE_8_BITS | UART_PARITY_EVEN | UART_STOP_BITS_2),
    (UART_DATA_SIZE_8_BITS | UART_PARITY_ODD | UART_STOP_BITS_2)
};
// *****************************************************************************
// Section: Code
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
// int main(void)
// *****************************************************************************
int main(void)
{
    UINT32  menu_choice;
    UINT8   buf[1024];

    // Explorer16 LEDs are on lower 8-bits of PORTA and to use all LEDs, JTAG port must be disabled.
    mJTAGPortEnable(DEBUG_JTAGPORT_OFF);

    UARTConfigure(UART5, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART5, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(UART5, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UART5, GetPeripheralClock(), 9600);
    UARTEnable(UART5, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));

    SendDataBuffer(mainMenu, sizeof(mainMenu));

    while(1)
    {
        menu_choice = GetMenuChoice();

        switch(menu_choice)
        {
        case 1:
            sprintf(buf, "Actual Baud Rate: %ld\r\n\r\n", UARTGetDataRate(UART5, GetPeripheralClock()));
            SendDataBuffer(buf, strlen(buf));
            break;

        case 2:
            SendDataBuffer("Press 'U' to allow AUTO BAUD to sync\r\n", strlen("Press 'U' to allow AUTO BAUD to sync\r\n"));

            UARTStartAutoDataRateDetect(UART5);

            while(!UARTDataRateDetected(UART5))
                ;

            sprintf(buf, "Actual Baud Rate: %ld\r\n\r\n", UARTGetDataRate(UART5, GetPeripheralClock()));
            SendDataBuffer(buf, strlen(buf));
            break;

        case 3:
            SendDataBuffer(lineMenu, sizeof(lineMenu));
            menu_choice = GetMenuChoice();
            menu_choice--;

            if(menu_choice >= 6)
            {
                SendDataBuffer("Invalid Choice", sizeof("Invalid Choice"));
                SendDataBuffer(mainMenu, sizeof(mainMenu));
                break;
            }

            SendDataBuffer("Press Any Character after re-configuring you terminal\r\n", strlen("Press Any Character after re-configuring you terminal\r\n"));
            UARTSetLineControl(UART5, lineControl[menu_choice]);

            menu_choice = GetMenuChoice();
            SendDataBuffer(mainMenu, sizeof(mainMenu));
           break;

        case 4:
            {
                UINT32 rx_size;

                SendDataBuffer("Type a message (less than 100 characters) and press return\r\n", strlen("Type a message (less than 100 characters) and press return\r\n"));

                rx_size = GetDataBuffer(buf, 1024);

                SendDataBuffer("You Typed:\r\n\r\n", strlen("You Typed:\r\n\r\n"));
                SendDataBuffer(buf, rx_size);
                SendDataBuffer("\r\n\r\nPress any key to continue", strlen("\r\n\r\nPress any key to continue"));
                GetMenuChoice();
            }
            break;

         case 5:
            sprintf(buf, "Analog Channel 2: %ld\r\n\r\n", getSystemVoltage());
            SendDataBuffer(buf, strlen(buf));
            break;
        default:
            SendDataBuffer(mainMenu, sizeof(mainMenu));

        }
    }

    return -1;
}
// *****************************************************************************
// void UARTTxBuffer(char *buffer, UINT32 size)
// *****************************************************************************
void SendDataBuffer(const char *buffer, UINT32 size)
{
    while(size)
    {
        while(!UARTTransmitterIsReady(UART5))
            ;

        UARTSendDataByte(UART5, *buffer);

        buffer++;
        size--;
    }

    while(!UARTTransmissionHasCompleted(UART5))
        ;
}
// *****************************************************************************
// UINT32 GetDataBuffer(char *buffer, UINT32 max_size)
// *****************************************************************************
UINT32 GetDataBuffer(char *buffer, UINT32 max_size)
{
    UINT32 num_char;

    num_char = 0;

    while(num_char < max_size)
    {
        UINT8 character;

        while(!UARTReceivedDataIsAvailable(UART5))
            ;

        character = UARTGetDataByte(UART5);

        if(character == '\r')
            break;

        *buffer = character;

        buffer++;
        num_char++;
    }

    return num_char;
}

UINT32 GetDataBuffer2(char *buffer, UINT32 max_size)
{
    UINT32 num_char;

    num_char = 0;

    while(num_char < max_size)
    {
        UINT8 character;

        while(!UARTReceivedDataIsAvailable(UART2))
            ;

        character = UARTGetDataByte(UART2);

        if(character == '\r')
            break;

        *buffer = character;

        buffer++;
        num_char++;
    }

    return num_char;
}
// *****************************************************************************
// UINT32 GetMenuChoice(void)
// *****************************************************************************
UINT32 GetMenuChoice(void)
{
    UINT8  menu_item;

    while(!UARTReceivedDataIsAvailable(UART5))
        ;

    menu_item = UARTGetDataByte(UART5);

    menu_item -= '0';

    return (UINT32)menu_item;
}




UINT32 getSystemVoltage(void) {
    unsigned int offset; // points to the base of the idle buffer

    // configure and enable the ADC
    CloseADC10();// ensure the ADC is off before setting the configuration

    // define setup parameters for OpenADC10
    #define PARAM1 ADC_MODULE_ON | ADC_FORMAT_INTG | ADC_CLK_AUTO | ADC_AUTO_SAMPLING_ON
    #define PARAM2 ADC_VREF_AVDD_AVSS | ADC_OFFSET_CAL_DISABLE | ADC_SCAN_OFF | ADC_SAMPLES_PER_INT_2 | ADC_ALT_BUF_ON | ADC_ALT_INPUT_ON
    #define PARAM3 ADC_CONV_CLK_INTERNAL_RC | ADC_SAMPLE_TIME_12
    #define PARAM4 SKIP_SCAN_ALL
    #define PARAM5 ENABLE_AN2_ANA

    // configure to sample AN2
    SetChanADC10(   ADC_CH0_NEG_SAMPLEA_NVREF | ADC_CH0_POS_SAMPLEA_AN2);

    // configure ADC and enable it
    OpenADC10( PARAM1, PARAM2, PARAM3, PARAM4, PARAM5 );

    // Now enable the ADC logic
    EnableADC10();



    // determine which buffer is idle and create an offset
    offset = 8 * ((~ReadActiveBufferADC10() & 0x01));

    // read the result of channel 4 conversion in the idle buffer
    return ReadADC10(offset);
}
