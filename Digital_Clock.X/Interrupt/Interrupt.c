/*
 * File:   Interrupt.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:26 PM
 */

#include"Interrupt.h"

void __interrupt() ISR(void)
{
    if(INTCONbits.T0IF==1)
    {    
      TMR0=100;
      INTCONbits.T0IF=0;
      
      Interrupt_CbStruct.Timer_CB();
    }
    else if(INTCONbits.INTF==1)
    {
      INTCONbits.INTF=0;
      Interrupt_CbStruct.EXTI_CB();
    
    }    




}