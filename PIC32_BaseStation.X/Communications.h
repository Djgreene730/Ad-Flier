/*
 *  The Ad-Flier! - Communications Include File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 *  Include into Main File for Operability:
 *  #include <Communications.h>
 *
 */

// Includes
#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>

// Gyroscope Address Registers
typedef enum {
    WHO_AM_I        =   0x0F,   // Read-Only
    CTRL_REG1       =	0x20,   // Read & Write
    CTRL_REG2       =	0x21,   // Read & Write
    CTRL_REG3       =	0x22,   // Read & Write
    CTRL_REG4       =	0x23,   // Read & Write
    CTRL_REG5       =	0x24,   // Read & Write
    REFERENCE       =	0x25,   // Read & Write
    OUT_TEMP        =	0x26,   // Read-Only
    STATUS_REG      =	0x27,   // Read-Only
    OUT_X_L         =	0x28,   // Read-Only
    OUT_X_H         =	0x29,   // Read-Only
    OUT_Y_L         =	0x2A,   // Read-Only
    OUT_Y_H         =	0x2B,   // Read-Only
    OUT_Z_L         =	0x2C,   // Read-Only
    OUT_Z_H         =	0x2D,   // Read-Only
    FIFO_CTRL_REG   =	0x2E,   // Read & Write
    FIFO_SRC_REG    =	0x2F,   // Read-Only
    INT1_CFG        =	0x30,   // Read & Write
    INT1_SRC        =	0x31,   // Read-Only
    INT1_TSH_XH     =	0x32,   // Read & Write
    INT1_TSH_XL     =	0x33,   // Read & Write
    INT1_TSH_YH     =	0x34,   // Read & Write
    INT1_TSH_YL     =	0x35,   // Read & Write
    INT1_TSH_ZH     =	0x36,   // Read & Write
    INT1_TSH_ZL     =	0x37,   // Read & Write
    INT1_DURATION   =	0x38    // Read & Write
} GyroscopeAddress;

// SPI_1 Devices
typedef enum {
    None        =   0,
    Gyroscope   =   1,
    Barometer   =   2,
    MicroSD     =   3,
    SRAM        =   4
} SPI1_Devices;


// Structures
typedef struct {
   UINT8    size;
   UINT8    data[150];
   UINT8    ready:1;
} Sentence;

typedef union {
    struct {
        unsigned D0:1;
        unsigned D1:1;
        unsigned D2:1;
        unsigned D3:1;
        unsigned D4:1;
        unsigned D5:1;
        unsigned D6:1;
        unsigned D7:1;
    };
    struct {
        unsigned Byte:8;
    };
} FPGADataPins;

typedef union {
    struct {
        unsigned XL:8;
        unsigned XU:8;
        unsigned YL:8;
        unsigned YU:8;
        unsigned ZL:8;
        unsigned ZU:8;
    };
    struct {
        signed X:16;
        signed Y:16;
        signed Z:16;
    };
} GyroscopeReading;

// System Frequencies
#define SYS_FREQ            (80000000L)
#define PBUS_FREQ           80000000    // 40 MHz - Main Oscillator

// UART Frequencies
#define UART1_FREQ          57600       // 57.6 kbps - XBee
#define UART2_FREQ          4800        //  4.8 kbps - GPS NMEA
#define UART5_FREQ          9600        //  9.6 kbps - Bluetooth

// SPI Frequencies
#define SPI_uSD_FREQ        25000000    // 25 MHz Max
#define SPI_SRAM_FREQ       40000000    // 40 MHz Max
#define SPI_BARO_FREQ       8000000     //  8 MHz Max
#define SPI_GYRO_FREQ       5000000    // 10 MHz Max
#define SPI_FPGA_FREQ       10000000    // 10 MHz Max

// Last SPI Device Used
extern SPI1_Devices LastSPI1Initialize;

// SPI 1 Initiate Devices
#define initBARO            initiateSPI1(SPI_BARO_FREQ), LastSPI1Initialize = Barometer;
#define inituSD             initiateSPI1(SPI_uSD_FREQ), LastSPI1Initialize = MicroSD;


// SPI 1 Select Phrases
#define SPI1_SelectNone     mPORTDSetBits(BIT_1 | BIT_2 | BIT_3 | BIT_5);
#define SPI1_SelectBARO     mPORTDClearBits(BIT_1);
#define SPI1_SelectuSD      mPORTDClearBits(BIT_2);


// GPS Configuration Global Variables
extern Sentence gps_nmea_position;
extern Sentence gps_nmea_velocity;

// XBee Configuration Global Variables
extern Sentence xbee_baud;
extern Sentence xbee_channel;
extern Sentence xbee_network;

// Gyroscope Variables
extern Sentence            gyroTempBuf;
extern GyroscopeReading    gyroCurrent;

// Initialization Commands
extern void initializeUART(void);

// GPS Commands
extern UINT32 read_GPS_Sentence();

// XBee Commands
extern UINT32 getXBee(char *, UINT32);
extern void putsXBee(const char *, UINT32);
extern UINT8 configureXBee(Sentence, Sentence, Sentence);
extern UINT8 getXBeeConfig(void);

// SPI Functions
extern void initiateSPI1(int CLKSPEED);
extern void initiateSPI2(int CLKSPEED);
extern UINT8 readGyroscope(GyroscopeAddress);

// Bluetooth Functions
extern UINT32 getBluetooth(char *, UINT32);
extern void putsBluetooth(const char *, UINT32);

// Gyroscope Functions
extern void read_Gyro_Sentence(void);


// SRAM Functions
extern unsigned char SRAMReadStatusReg(void);
extern char SRAMWriteStatusReg(unsigned char WriteVal);
extern void SRAMCommand(unsigned char AddLB, unsigned char AddHB, unsigned char RWCmd);
extern char SRAMWriteByte(unsigned char AddLB,unsigned char AddHB,unsigned char Data);
extern unsigned char SRAMReadByte(unsigned char AddLB,unsigned char AddHB);
extern unsigned char SRAMWritePage(unsigned char AddLB,unsigned char AddHB, unsigned char *WriteData);
extern unsigned char SRAMReadPage(unsigned char AddLB,unsigned char AddHB,unsigned char *ReadData);
extern char SRAMWriteSeq(unsigned char AddLB,unsigned char AddHB, unsigned char *WriteData,unsigned int WriteCnt);
extern char SRAMReadSeq(unsigned char AddLB,unsigned char AddHB,unsigned char *ReadData,unsigned int ReadCnt);