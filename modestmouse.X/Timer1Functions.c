#include "p30F4011.h"
#include "Timer1Functions.h"
#include "IOSetup.h"

// Remove for final version. Uses lots of mem.
#include <stdio.h>

void Timer1Setup(void){
    T1CONbits.TON = 0; // Disable timer module
    TMR1 = 0;
    T1CONbits.TCKPS = 2; // Sets pre-scaler to 1:8
    PR1 = 19999;
    T1CONbits.TCS = 0;
    T1CONbits.TSYNC = 0;
    T1CONbits.TSIDL = 1;
    T1CONbits.TGATE = 0;
    IFS0bits.T1IF = 0; // Reset interrupt flag
    IPC0bits.T1IP = 6; // Set interrupt priority
    IEC0bits.T1IE = 1; // Enable interrupt
    T1CONbits.TON = 1; // Enable timer module
}
void __attribute__((__interrupt__, __auto_psv__)) _T1Interrupt(void)  {

    IFS0bits.T1IF = 0; 
    trigPin = 0;
    __delay_ms(5);
    trigPin = 1;
    __delay_ms(10);
    trigPin = 0;
    int duration = 0;
    char SensorCm[9];
    //char test1[9];
    float cm;
    while(echoPin == 0){
    }
    while(echoPin == 1){
        duration++;
    }
    //sprintf(test1,"%d\n",duration);
    //sendStringUART(test1);
    cm = duration/170.0;
    sprintf(SensorCm,"%.2fcm\n",cm);
    write_string_uart2(SensorCm);
}

