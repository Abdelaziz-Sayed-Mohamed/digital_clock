/* 
 * File:   Scheduler.h
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:03 PM
 */

#ifndef SCHEDULER_H
#define	SCHEDULER_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"Scheduler_Cfg.h"

#define Active_Task(System_Tick,TaskPeroid)  (System_Tick%(TaskPeroid/Tick_Peroid)) ? 0:1  

    
void Scheduler_Update(void) ;
void Scheduler_Init(void) ;

#ifdef	__cplusplus
}
#endif

#endif	/* SCHEDULER_H */

