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


int main(void)
{
    unsigned int i=0;
    
    //infinite loop in which we count
    while(1)
    {
            if (i>=17) //reset to zero ones we have reached some arbitrary value
            {
                i=0;
            }
            else
            {
                i++;
            }
    }; //remain here forever, never end the main function.
        
    return 0; //we should never really return
}