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
        unsigned B0:8;
        unsigned B1:8;
        unsigned B2:8;
        unsigned B3:8;
    } bytes;
    unsigned UValue:32;
    signed   SValue:32;
    float    Value;
} DFloat;

typedef union {
    struct {
        unsigned RSV:16;
        unsigned SL:8;
        unsigned SU:8;
        unsigned ML:8;
        unsigned MU:8;
        unsigned HL:8;
        unsigned HU:8;
    } timeBytes;
    unsigned long long  UValue;
    signed long long    SValue;
    double              Value;
} DLONG;

typedef union {
    struct {
        DFloat  X;
        DFloat  Y;
        DFloat  Z;
        UINT8   T;
    };
} AngleReading;

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
        unsigned TU:8;
    };
    struct {
        signed X:16;
        signed Y:16;
        signed Z:16;
        signed Temp:8;
    } Signed;
    struct {
        unsigned X:16;
        unsigned Y:16;
        unsigned Z:16;
        unsigned Temp:8;
    } Unsigned;
} GyroscopeReading;

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
        unsigned X:16;
        unsigned Y:16;
        unsigned Z:16;
    } Unsigned;
    struct {
        signed X:16;
        signed Y:16;
        signed Z:16;
    } Signed;
} AccelerometerReading;

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
    } Signed;

} MagnetometerReading;

typedef union {
    struct {
        unsigned PL:8;
        unsigned PU:8;
        unsigned TL:8;
        unsigned TU:8;
    };
    struct {
        unsigned P:16;
        unsigned T:16;
    };
} BarometerReading;

typedef union {
    struct {
        unsigned HL:8;
        unsigned HU:8;
        unsigned TL:8;
        unsigned TU:8;
    };
    struct {
        unsigned H:16;
        unsigned T:16;
    };
} HumidityReading;

typedef union {
    struct {
        unsigned VL:8;
        unsigned VU:8;
    };
    struct {
        unsigned V:16;
    };
} VoltageReading;

typedef union {
    struct {
        Sentence time;
        Sentence Latitude;
        Sentence Longitude;
        unsigned char Fix;
        unsigned char NumSatellites;
        Sentence HorizontalDilution;
        Sentence Altitude;
        Sentence HeightOfGeoid;
    };
} GPSReading;



// System Frequencies
#define SYS_FREQ            (80000000L)
#define PBUS_FREQ           80000000    // 40 MHz - Main Oscillator

// UART Frequencies
#define UART1_FREQ          57600       // 57.6 kbps - XBee
#define UART2_FREQ          4800        //  4.8 kbps - GPS NMEA
#define UART5_FREQ          57600        //  9.6 kbps - Bluetooth

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
extern BOOL     gpsTimeUpdated;

// XBee Configuration Global Variables
extern Sentence xbee_baud;
extern Sentence xbee_channel;
extern Sentence xbee_network;

// XBee Sentence Variables
extern Sentence             gyroTempBuf;
extern Sentence             accelTempBuf;
extern Sentence             compassTempBuf;
extern Sentence             barometerTempBuf;
extern Sentence             humidityTempBuf;
extern Sentence             voltageTempBuf;
extern Sentence             angleTempBuf;
extern Sentence             timeTempBuf;
extern Sentence             gpsTempBuf;

extern GyroscopeReading     gyroCurrent;
extern AccelerometerReading accelCurrent;
extern MagnetometerReading  compassCurrent;
extern BarometerReading     barometerCurrent;
extern HumidityReading      humidityCurrent;
extern VoltageReading       voltageCurrent;
extern AngleReading         angleCurrent;
extern rtccTime             timeFCBCurrent;
extern GPSReading           gpsBaseCurrent;

// FPGA Internal Data
extern UINT8               pwmReading[4];
extern INT8                errorReading[4];
extern UINT8               altitudeReading[2];


// Initialization Commands
extern void initializeUART(void);

// GPS Commands
extern UINT32 read_GPS_Sentence();

// XBee Commands
extern UINT32 getXBee(char *, UINT32);
extern void putsXBee(const char *, UINT32);
extern UINT8 configureXBee(Sentence, Sentence, Sentence);
extern UINT8 getXBeeConfig(void);
extern void read_XBee_Sentence(void);

// SPI Functions
extern void initiateSPI1(int CLKSPEED);
extern void initiateSPI2(int CLKSPEED);
extern UINT8 readGyroscope(GyroscopeAddress);

// Bluetooth Functions
extern UINT32 getBluetooth(char *, UINT32);
extern void putsBluetooth(const char *, UINT32);