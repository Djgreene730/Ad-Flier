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

// System Frequencies
#define SYS_FREQ            (80000000L)
#define PBUS_FREQ           80000000    // 40 MHz - Main Oscillator

// UART Frequencies
#define UART1_FREQ          57600       // 57.6 kbps - XBee
#define UART2_FREQ          4800        //  4.8 kbps - GPS NMEA
#define UART5_FREQ          38400       // 28.4 kbps - GPS TSIP

// SPI Frequencies
#define SPI_uSD_FREQ        25000000    // 25 MHz Max
#define SPI_SRAM_FREQ       40000000    // 40 MHz Max
#define SPI_BARO_FREQ       8000000     //  8 MHz Max
#define SPI_GYRO_FREQ       5000000    // 10 MHz Max
#define SPI_FPGA_FREQ       10000000    // 10 MHz Max

// Last SPI Device Used
extern SPI1_Devices LastSPI1Initialize;

// SPI 1 Initiate Devices
#define initGyro            initiateSPI1(SPI_GYRO_FREQ), LastSPI1Initialize = Gyroscope;
#define initBARO            initiateSPI1(SPI_BARO_FREQ), LastSPI1Initialize = Barometer;
#define inituSD             initiateSPI1(SPI_uSD_FREQ), LastSPI1Initialize = MicroSD;
#define initSRAM            initiateSPI1(SPI_SRAM_FREQ), LastSPI1Initialize = SRAM;

// SPI 1 Select Phrases
#define SPI1_SelectNone     mPORTDSetBits(BIT_1 | BIT_2 | BIT_3 | BIT_5);
#define SPI1_SelectBARO     mPORTDClearBits(BIT_1);
#define SPI1_SelectuSD      mPORTDClearBits(BIT_2);
#define SPI1_SelectSRAM     mPORTDClearBits(BIT_3);
#define SPI1_SelectGYRO     mPORTDClearBits(BIT_5);

// SPI 2 Select Phrases
#define SPI2_SelectNone     mPORTDSetBits(BIT_4);
#define SPI2_SelectFPGA     initiateSPI2(SPI_FPGA_FREQ), mPORTDClearBits(BIT_4);

// I2C Mode
#define I2C_FREQ            400000      // 400 KHz Fast-Mode



// GPS Configuration Global Variables
extern Sentence gps_nmea_position;
extern Sentence gps_nmea_velocity;

// XBee Configuration Global Variables
extern Sentence xbee_baud;
extern Sentence xbee_channel;
extern Sentence xbee_network;

// Initialization Commands
extern void Delayms(unsigned);
extern void Delayus(unsigned);
extern void initializeUART(void);

// GPS Commands
extern UINT32 read_GPS_Sentence();

// XBee Commands
extern UINT32 getXBee(char *, UINT32);
extern void putsXBee(const char *, UINT32);
extern UINT8 configureXBee(Sentence, Sentence, Sentence);
extern UINT8 getXBeeConfig(void);

// FPGA Parallel Port Commands
extern void setFPGAParallelPins(UINT8);
extern UINT8 getFPGAParallelPins(void);
extern void sendFPGAData(UINT8, UINT8);
extern UINT8 getFPGAData(UINT8);

// SPI Functions
extern void initiateSPI1(int CLKSPEED);
extern void initiateSPI2(int CLKSPEED);
