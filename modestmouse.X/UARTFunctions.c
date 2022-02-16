#include "UARTFunctions.h"
#include "p30F4011.h"
#include "IOSetup.h"

void UART2Setup(void){
    U2MODEbits.UARTEN = 0; // disable UART during setup
    U2BRG = 16; // Sets baud rate to 57.6 kbits/s
    U2MODEbits.LPBACK = 0;
    U2MODEbits.WAKE = 0;
    U2MODEbits.ABAUD = 0;
    U2MODEbits.PDSEL = 0;
    U2MODEbits.STSEL = 0;
    U2STAbits.URXISEL = 0;
    IFS1bits.U2RXIF = 0;
    IPC6bits.U2RXIP = 3; // Set priority
    IEC1bits.U2RXIE = 1;
    U2MODEbits.UARTEN = 1;
    U2STAbits.UTXEN = 1;
}

void __attribute__((interrupt, no_auto_psv)) _U2RXInterrupt(void) {
    IFS1bits.U2RXIF = 0;
    LED2PORT = ~LED2PORT;
}

void __attribute__((interrupt, no_auto_psv)) _U2TXInterrupt(void) {
    IFS1bits.U2TXIF = 0;
}

