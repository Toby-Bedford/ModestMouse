/* 
 * File:   IOSetup.h
 * Author: harry
 *
 * Created on 11 January 2022, 20:32
 */

#ifndef IOSETUP_H
#define	IOSETUP_H

#ifdef	__cplusplus
extern "C" {
#endif

//Defining S3
#define S3PORT PORTDbits.RD2
#define S3TRIS TRISDbits.TRISD2
#define S3LAT LATDbits.LATD2
    
//Defining LED2
#define LED2PORT PORTDbits.RD1
#define LED2TRIS TRISDbits.TRISD1
#define LED2LAT LATDbits.LATD1
    
//Defining LED3
#define LED3PORT PORTDbits.RD3
#define LED3TRIS TRISDbits.TRISD3
#define LED3LAT LATDbits.LATD3
    
//Defining LED4
#define LED4PORT PORTEbits.RE0
#define LED4TRIS TRISEbits.TRISE0
#define LED4LAT LATEbits.LATE0
    
// 23/03/2022
// Switched motors pins to from RB7 --> RB5 & RB8 --> RB6
#define PIN37PORT PORTBbits.RB5
#define PIN37TRIS TRISBbits.TRISB5
#define PIN37LAT LATBbits.LATB5
    
#define PIN36PORT PORTBbits.RB6
#define PIN36TRIS TRISBbits.TRISB6
#define PIN36LAT LATBbits.LATB6

// Added setup pins for ultrasonic sensor.
#define ECHO_tris TRISBbits.TRISB7
#define ECHO_port PORTBbits.RB7

#define TRIG_tris TRISBbits.TRISB8
#define TRIG_lat LATBbits.LATB8
 

void GPIOSetup(void);
    

#ifdef	__cplusplus
}
#endif

#endif	/* IOSETUP_H */

