/*
 * File:   Interrupt.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:26 PM
 */
char value = 0;
#include"Interrupt.h"

void __interrupt() ISR(void)
{
    if(INTCONbits.TMR0IF==1)
    {   
      
      TMR0 = 100;                   
      TMR0IF=0;       // Clear timer interrupt flag
      Interrupt_CbStruct.Timer_CB(); 
      
    }
    else if(INTCONbits.INTF==1)
    {
      INTCONbits.INTF=0;
      Interrupt_CbStruct.EXTI_CB();
    
    }    

}