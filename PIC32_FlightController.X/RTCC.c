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
    rtccTime	tm, tm1;			// time structure
    rtccDate	dt, dt1;			// date structure
    RtccInit();

    // Wait for the SOSC to be actually running and RTCC to have its clock source
    while(RtccGetClkStat()!=RTCC_CLK_ON);

    RtccSetTimeDate(0x03203000, 0x12041804);	// time is MSb: hour, min, sec, rsvd. date is MSb: year, mon, mday, wday.
    // please note that the rsvd field has to be 0 in the time field!

    // NOTE: at this point the writes to the RTCC time and date registers are disabled

    // we can also read the time and date
    tm1.l=RtccGetTime();
    dt1.l=RtccGetDate();

    // Can check that the time and date are the ones we just set
    if(tm.hour!=tm1.hour ||tm.min!=tm1.min) {
        return 0;
    }
    if(dt.l!=dt1.l) {
        return 0;
    }

    // we can read the time and date in a single operation
    RtccGetTimeDate(&tm1, &dt1);

    // now that we know the RTCC clock is up and running, it's easier to start from fresh:
    RtccOpen(tm.l, dt.l, 0);	// set time, date and calibration in a single operation

    // check that the RTCC is running
    if(!rtccRunning(3)) {
        return 0;
    }

    // another way to see the RTCC is tunning: check the SYNC bit
    while(RtccGetSync());	// wait sync to be low
    while(!RtccGetSync());	// wait to be high
    while(RtccGetSync());	// wait sync to be low again
}

