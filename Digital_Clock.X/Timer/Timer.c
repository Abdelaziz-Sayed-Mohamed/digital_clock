/*
 * File:   Timer.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:03 PM
 */
#include"Timer.h"
#include"../Scheduler/Scheduler.h"



uint32_t Tick=0;
void Timer_Init(void) 
{ 
    OPTION_REGbits.T0CS=0;
    OPTION_REGbits.PSA=0;
    
    OPTION_REGbits.PS0=1;
    OPTION_REGbits.PS1=1;
    OPTION_REGbits.PS2=1;
    
    TMR0=100;
    INTCONbits.TMR0IF=0;
    
    INTCONbits.PEIE=1;
   
    INTCONbits.GIE=1;
   
    
}


void Timer_Start(void) 
{
     INTCONbits.TMR0IE=1;
}

void Timer0_CB(void) 
{   Tick++;
    Scheduler_Active(Tick);
}
