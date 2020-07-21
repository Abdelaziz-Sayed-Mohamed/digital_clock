/* 
 * File:   Interrupt_Cfg.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:30 PM
 */

#ifndef INTERRUPT_CFG_H
#define	INTERRUPT_CFG_H

#ifdef	__cplusplus
extern "C" {
#endif

#include"../config.h"
#include"../Timer/Timer.h"
#include"../Buttons/Buttons.h"

    
    
typedef void(*Interrupt_CB_t)(void);

typedef struct Interrupt_CbStruct_T
{
 Interrupt_CB_t Timer_CB;
 Interrupt_CB_t EXTI_CB;
 
}Interrupt_CbStruct_t ;
 
extern const Interrupt_CbStruct_t   Interrupt_CbStruct    ;  
#ifdef	__cplusplus
}
#endif

#endif	/* INTERRUPT_CFG_H */

