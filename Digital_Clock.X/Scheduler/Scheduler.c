/*
 * File:   Scheduler.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:02 PM
 */

#include"Scheduler.h"
#include"../Timer/Timer.h"

void Scheduler_Init(void) 
{
    memset(Task_Flag,0,sizeof(Task_Flag));
}

void Scheduler_Update(void) 
{
    
       for(uint8_t i=0 ;i<NumberOfTasks;i++)
       {
        
           if(Active_Task(Tick,Tasks[i].Task_Peroid))
            {
              Tasks[i].Task();
            }    
           
       }
    
         
}