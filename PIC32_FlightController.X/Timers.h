/*
 *  The Ad-Flier! - Accelerometer Include File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 *  Include into Main File for Operability:
 *  #include "Timers.h"
 *
 */

#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>


// Global Functions
extern void     Delayms(unsigned);
extern void     Delayus(unsigned);
extern void     startTimeCounter2();
extern int      stopTimeCounter2();     // Returns mS Timer2 has Ellapsed