#include "p30F4011.h"
#include "QEIFunctions.h"

void QEISetup (void) {
    // Configure analogue pins as digital channels
    ADPCFGbits.PCFG5 = 1; // QEB on pin 7
    ADPCFGbits.PCFG4 = 1; // QEA on pin 6
    // Configure QEI module
    QEICONbits.QEISIDL = 1;
    QEICONbits.QEIM = 0b111;
    QEICONbits.SWPAB = 0;
    QEICONbits.PCDOUT = 0;
    QEICONbits.POSRES = 0;
    QEICONbits.TQCS = 0;
    DFLTCONbits.QEOUT = 0;
    // Set initial counter value and maximum range.
    MAXCNT = 0xffff;
    POSCNT = 0x7fff;
    //Configure interrupt controller.
    IFS2bits.QEIIF = 0;
    IEC2bits.QEIIE = 1;
    IPC10bits.QEIIP = 5;
    

}

extern int rollover_counter = 0;

void __attribute__((interrupt, auto_psv)) _QEIInterrupt(void) {
    IFS2bits.QEIIF = 0;
    if(POSCNT < 32768)
        rollover_counter++;
    else 
        rollover_counter--;
}