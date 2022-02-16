/*
main.c
Project: MAGL
Device/Target: dsPIC30F4011 on a FireCracker board
Author(s): W. Zhang
Functionality: a simple test program to get to know the MPLAB environment 
Change History:
                2018-11-13    : Initial Release
				2012-00-24	  : corrections for semester 2018/19
*/



#include <p30Fxxxx.h> //picks the correct device automatically
#include "IOSetup.h"
#include "Timer1Functions.h"
#include "PWMFunctions.h"
#include "UARTFunctions.h"
#include "QEIFunctions.h"


//lets set the device configuration bits using the pre-processor macros  

//primary oscillator with 8 times pll no clock switching
#pragma config FOS = PRI
#pragma config FPR = XT_PLL8
#pragma config FCKSMEN = CSW_FSCM_OFF

//watch dog is disabled
#pragma config WDT = WDT_OFF

//brown out disabled, master-clear enabled, power on reset time = 64ms
#pragma config BOREN = PBOR_OFF
#pragma config MCLRE = MCLR_EN
#pragma config FPWRT = PWRT_64

// pwm low side is active high, pwm high side is active low, reset state controlled with HPOL/LPOL bits    
#pragma config LPOL = PWMxL_ACT_HI
#pragma config HPOL = PWMxH_ACT_LO
#pragma config PWMPIN = RST_PWMPIN

// Function prototypes
void delay (long time_in_miliseconds);
int debounce (int input);
void clockwise (void);
void anti_clockwise (void);



int main(void)
{
    
    GPIOSetup();
    Timer1Setup();
    PWMSetup();
    UART2Setup();
    QEISetup();
    
    
    while(1)
    {
        clockwise();
        PDC1 = 32000;
        delay(1000);
        anti_clockwise();
        PDC1 = 32000;
        delay(1000);
    }; //remain here forever, never end the main function.  
    return 0; //we should never really return
}


void clockwise (void) {
    PIN37LAT = 1;
    PIN37PORT = 1;
    PIN36LAT = 0;
    PIN36PORT = 0;
};

void anti_clockwise (void) {
    PIN37LAT = 0;
    PIN37PORT = 0;
    PIN36LAT = 1;
    PIN36PORT = 1;
};


// Functions
void delay (long time_in_miliseconds){
    long j = 0;
    for (j = 0; j <= time_in_miliseconds * 727; j++) {}
};

int debounce(int input){
    int count = 0;
    while (input == 1) {
        delay(1);
        count++;
        if (count >= 10) {
            return 1;
        };
    }
    return 0;
};