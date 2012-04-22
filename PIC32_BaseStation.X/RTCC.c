/*
 *  The Ad-Flier! - Communications Source File
 *  Team SkyLights, Senior Design, Spring 2012
 *
 */


// Includes
#include "RTCC.h"
#include "Ad-Flier_Pins.h"
#include <plib.h>


// Self-Test for the Real-Time Clock
int rtccRunning(int secWait) {
    // how many ms to wait for the RTCC seconds count to change
    #define         WAIT_FOR_SEC_TMO	1100
    rtccTime        t0, t1;
    int             fail;
    int             secCnt;
    unsigned int    tStart;



    for(secCnt=0, fail=0; secCnt<secWait; secCnt++) {
        tStart=ReadCoreTimer();
        t0.l=RtccGetTime();
        do {
            t1.l=RtccGetTime();
        }while((t1.sec==t0.sec) && (ReadCoreTimer()-tStart)<(80000000/2000)*WAIT_FOR_SEC_TMO);	// wait seconds change

        if(t1.sec==t0.sec) {
            fail=1;
            break;	// failed
        }
    }

    return !fail;
}

int initializeRTCC () {
    // Init the RTCC using PLIB.h
    RtccInit();

    // Wait for the SOSC to be actually running and RTCC to have its clock source
    while(RtccGetClkStat()!=RTCC_CLK_ON);
    RtccSetTimeDate(0, 0);	// time is MSb: hour, min, sec, rsvd. date is MSb: year, mon, mday, wday.

    // check that the RTCC is running
    if(!rtccRunning(3)) {
        return 0;
    }
}


