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

// Initialization Commands
void initializeUART(void);

// GPS Commands
UINT32 read_GPS_Sentence(char *, UINT32);

// XBee Commands
UINT32 getXBee(char *, UINT32);
void putsXBee(const char *, UINT32);


