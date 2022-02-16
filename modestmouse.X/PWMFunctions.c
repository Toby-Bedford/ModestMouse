#include "p30F4011.h"
#include "PWMFunctions.h"

void PWMSetup(void){
    PTCONbits.PTEN = 0; // Turn off module
    PTCONbits.PTCKPS = 0b01; // Set pre-scaler to 1:4
    PTPER = 15999; // Set PWM period
    PWMCON1bits.PMOD1 = 1; // Set channel 1 into independedn mode
    PWMCON1bits.PEN1L = 1;
    PWMCON1bits.PEN1H = 1;
    PTCONbits.PTEN = 1; // Turn on module
    
    
}

