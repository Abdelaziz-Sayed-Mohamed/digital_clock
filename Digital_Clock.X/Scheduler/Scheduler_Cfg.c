/*
 * File:   Scheduler_Cfg.c
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:06 PM
 */

#include"Scheduler_Cfg.h"


uint8_t Task_Flag[NumberOfTasks];

const Tasks_t Tasks[NumberOfTasks]={
                                      {
                                       .Task_Peroid=Task1_Peroid,
                                       .Task=Scheduler_Task1                             
                                      },
                                      {
                                       .Task_Peroid=Task2_Peroid,
                                       .Task=Scheduler_Task2                             
                                      },
       
                                      {
                                       .Task_Peroid=Task3_Peroid,
                                       .Task=Scheduler_Task3                              
                                      }
                                 };  
