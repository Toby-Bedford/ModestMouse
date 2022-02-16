#include "p30F4011.h"
#include "Timer1Functions.h"
#include "IOSetup.h"



void Timer1Setup(void){
    T1CONbits.TON = 0; // Disable timer module
    TMR1 = 0;
    T1CONbits.TCKPS = 0b01; // Sets pre-scaler to 1:8
    PR1 = 19998;
    T1CONbits.TCS = 0;
    T1CONbits.TSYNC = 0;
    T1CONbits.TSIDL = 1;
    T1CONbits.TGATE = 0;
    IFS0bits.T1IF = 0; // Reset interrupt flag
    IPC0bits.T1IP = 6; // Set interrupt priority
    IEC0bits.T1IE = 1; // Enable interrupt
    T1CONbits.TON = 1; // Enable timer module
}

void __attribute__((interrupt, auto_psv)) _T1Interrupt(void) {
    IFS0bits.T1IF = 0;
    TMR1 = 0;
    LED2LAT = ~LED2LAT;
    static int timer_counter = 0;
    if (timer_counter >= 49) {
        timer_counter = 0;
        LED3PORT = ~LED3PORT;
    } else {
        timer_counter++;
    }
}

