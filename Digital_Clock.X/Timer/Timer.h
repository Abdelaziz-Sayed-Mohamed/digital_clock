/* 
 * File:   Timer.h
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:03 PM
 */

#ifndef TIMER_H
#define	TIMER_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"../config.h"
    
void Timer_Init(void);
void Timer_Start(void);
void Timer0_CB(void);

#ifdef	__cplusplus
}
#endif

#endif	/* TIMER_H */

