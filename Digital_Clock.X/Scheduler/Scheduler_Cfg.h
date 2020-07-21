/* 
 * File:   Scheduler_Cfg.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:10 PM
 */

#ifndef SCHEDULER_CFG_H
#define	SCHEDULER_CFG_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"../config.h"
#include"Task.h" 
#include"string.h"
    
#define Tick_Peroid   (20UL)    
#define NumberOfTasks (3UL)   

#define Task1_Peroid  (20UL) 
#define Task2_Peroid  (100UL)
#define Task3_Peroid  (1000UL)
    
    
typedef void(*Task_t)(void);  
typedef struct Tasks_T
{
    uint16_t Task_Peroid;
    Task_t Task;
}Tasks_t;

extern uint8_t Task_Flag[NumberOfTasks];
extern const Tasks_t Tasks[NumberOfTasks];
#ifdef	__cplusplus
}
#endif

#endif	/* SCHEDULER_CFG_H */

