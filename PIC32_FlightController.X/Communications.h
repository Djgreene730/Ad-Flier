/*
 *  The Ad-Flier! - Communications Include File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 *  Include into Main File for Operability:
 *  #include <Communications.h>
 *
 */

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>

// Structures


typedef struct {
   UINT8    size;
   UINT8    data[150];
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

// XBee Configuration Global Variables
extern Sentence xbee_baud;
extern Sentence xbee_channel;
extern Sentence xbee_network;

// Initialization Commands
void initializeUART(void);

// GPS Commands
UINT32 read_GPS_Sentence(char *, UINT32);

// XBee Commands
UINT32 getXBee(char *, UINT32);
void putsXBee(const char *, UINT32);
UINT8 configureXBee(Sentence, Sentence, Sentence);
UINT8 getXBeeConfig(void);

// FPGA Parallel Port Commands
void setFPGAParallelPins(UINT8);
UINT8 getFPGAParallelPins(void);
void sendFPGAData(UINT8, UINT8);
UINT8 getFPGAData(UINT8);
