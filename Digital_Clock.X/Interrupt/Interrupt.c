/*
 * File:   Interrupt.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:26 PM
 */
#include"Interrupt.h"
#include"../gpio/gpio.h"

void __interrupt() ISR(void)
{
    if(INTCONbits.TMR0IF)
    {   
      
      TMR0 = 100;                   
      TMR0IF=0;       // Clear timer interrupt flag
      Interrupt_CbStruct.Timer_CB(); 
      
    }
    if(INTCONbits.INTF)
    {
      INTCONbits.INTF=0;
      Interrupt_CbStruct.EXTI_CB();
    
    }    

}