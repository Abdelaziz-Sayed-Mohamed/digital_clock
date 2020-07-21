/*
 * File:   Interrupt_Cfg.c
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:29 PM
 */


#include"Interrupt_Cfg.h"


const Interrupt_CbStruct_t   Interrupt_CbStruct={
                                               .EXTI_CB= EXTI_SettingButton_CB,
                                               .Timer_CB=Timer0_CB       
                                             };

