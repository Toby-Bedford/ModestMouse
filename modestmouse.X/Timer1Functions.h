/* 
 * File:   Timer1Functions.h
 * Author: harry
 *
 * Created on 20 January 2022, 14:43
 */

#ifndef TIMER1FUNCTIONS_H
#define	TIMER1FUNCTIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

void Timer1Setup(void);
void __attribute__((interrupt, auto_psv)) _T1Interrupt(void);

#ifdef	__cplusplus
}
#endif

#endif	/* TIMER1FUNCTIONS_H */

