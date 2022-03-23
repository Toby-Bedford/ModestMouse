#include "p30F4011.h"
#include "Timer1Functions.h"
#include "IOSetup.h"

// Remove for final version. Uses lots of mem.
#include <stdio.h>



void Timer1Setup(void){
    T1CONbits.TON = 0; // Disable timer module
    TMR1 = 0;
    T1CONbits.TCKPS = 0; // Sets pre-scaler to 1:8
    PR1 = 160;
    T1CONbits.TCS = 0;
    T1CONbits.TSYNC = 0;
    T1CONbits.TSIDL = 1;
    T1CONbits.TGATE = 0;
    IFS0bits.T1IF = 0; // Reset interrupt flag
    IPC0bits.T1IP = 6; // Set interrupt priority
    IEC0bits.T1IE = 1; // Enable interrupt
    T1CONbits.TON = 1; // Enable timer module
}

char char1[9] = "its high\n\n";
char char2[9] = "its low\n\n";

void __attribute__((__interrupt__, __auto_psv__)) _T1Interrupt(void)  {

    TRIG_lat = 0;
    //__delay_ms(200);
    TRIG_lat = 1;
    LED2LAT = ~LED2LAT;
    char test1[9];
    //__delay_ms(7);
    sprintf(test1,"%d",ECHO_port);
    write_string_uart2(test1);
    
    /*
    
    if (ECHO_port == 1)
    {

        write_string_uart2(char1);
 }
    
    else if (ECHO_port == 0)
    {

        write_string_uart2(char2);
        __delay_ms(10);
    }
    */
    
    
    IFS0bits.T1IF = 0; 
    //write_string_uart2(char1);
}

