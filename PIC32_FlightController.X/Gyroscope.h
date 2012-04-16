/*
 *  The Ad-Flier! - Gyroscope Include File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 *  Include into Main File for Operability:
 *  #include <Gyroscope.h>
 *
 */

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>


// Global Gyroscope Values
extern int GyroX, GyroY, GyroZ;

// Gyroscope Functions
void Delayms(unsigned);
void Delayus(unsigned);