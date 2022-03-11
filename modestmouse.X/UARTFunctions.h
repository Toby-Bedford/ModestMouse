/* 
 * File:   UARTFunctions.h
 * Author: harry
 *
 * Created on 21 January 2022, 12:22
 */

#ifndef UARTFUNCTIONS_H
#define	UARTFUNCTIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

void UART2Setup(void);

void write_uart2(unsigned int input);
void write_string_uart2(const char * str);

#ifdef	__cplusplus
}
#endif

#endif	/* UARTFUNCTIONS_H */

