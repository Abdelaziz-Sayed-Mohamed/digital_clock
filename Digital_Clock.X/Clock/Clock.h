/* 
 * File:   Clock.h
 * Author: Abdelaziz Sayed
 *
 * Created on July 21, 2020, 1:10 AM
 */

#ifndef CLOCK_H
#define	CLOCK_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"../config.h"
    
typedef struct Clock_T
{   
    uint8_t Second; 
    uint8_t Minutes;
    uint8_t Hours;   
}Clock_t;
Clock_t Clock;


extern uint8_t Digit1;
extern uint8_t Digit2;
extern uint8_t Digit3;
extern uint8_t Digit4;
void Clock_Init(void);
void Clock_Update(void);
void Clock_Normal(void);
void Clock_Hour_Setting(void);
void Clock_Minutes_Setting(void);
#ifdef	__cplusplus
}
#endif

#endif	/* CLOCK_H */

