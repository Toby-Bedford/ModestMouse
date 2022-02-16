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

#define PIN37PORT PORTBbits.RB7
#define PIN37TRIS TRISBbits.TRISB7
#define PIN37LAT LATBbits.LATB7
    
#define PIN36PORT PORTBbits.RB8
#define PIN36TRIS TRISBbits.TRISB8
#define PIN36LAT LATBbits.LATB8
    

void GPIOSetup(void);
    

#ifdef	__cplusplus
}
#endif

#endif	/* IOSETUP_H */

