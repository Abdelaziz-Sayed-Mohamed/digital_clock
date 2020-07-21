/*
 * File:   Scheduler.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:02 PM
 */

#include"Scheduler.h"

void Scheduler_Init(void) 
{
    memset(Task_Flag,0,sizeof(Task_Flag));
}

void Scheduler_Update(void) 
{
    while(1)
    {
    
       for(uint8_t i=0 ;i<NumberOfTasks;i++)
       {
       
           if(Task_Flag[i]==1)
           {
               Tasks[i].Task();
           }
        
       }
    
    }  
}

void Scheduler_Active(uint32_t System_Tick) 
{
    for(uint8_t i=0 ;i<NumberOfTasks;i++)
    {
        if(Active_Task(System_Tick,Tasks[i].Task_Peroid))
        {
            Task_Flag[i]=1;  
        }
        else
        {
          Task_Flag[i]=0;
        }    
    
    }
}


