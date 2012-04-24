#include <p32xxxx.h>
#include <plib.h>
#include "Timers.h"

// Timer Functions - Start Timer 2
void startTimeCounter2() {
    T2CON = 0x8020;     // enable TMR1, Tpb, 1:8
    TMR2 = 0;
}

// Timer Functions - Return Ellapse Time in MilliSeconds
int stopTimeCounter2() {
    return (TMR2 / 1250);
}

// Simple Delay Functions (Milliseconds)
void Delayms(unsigned t) {
    T1CON = 0x8020;     // enable TMR1, Tpb, 1:8
    while (t--) {
        //PR1   = 0xffff;           // set period register to max
        TMR1 = 0;
        while (TMR1 < 1250);
    }
}

// Simple Delay Function (Microseconds)
void Delayus(unsigned t) {
    T1CON = 0x8010;     // enable TMR1, Tpb, 1:1
    TMR1 = 0;
    while (TMR1 < (10 * t));
}