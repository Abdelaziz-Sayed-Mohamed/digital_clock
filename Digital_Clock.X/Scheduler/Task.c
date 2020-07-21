/*
 * File:   Task.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:47 PM
 */

#include"Task.h"
#include"../config.h"
uint8_t c=0;
void Scheduler_Task1(void)   //20 ms
{
    c++;
}

void Scheduler_Task2(void)  //100 ms
{
    c++;
}

void Scheduler_Task3(void)  //500 ms
{
    c++;
}

