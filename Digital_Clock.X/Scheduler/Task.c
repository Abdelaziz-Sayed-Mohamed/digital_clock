/*
 * File:   Task.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:47 PM
 */

#include"Task.h"
#include"../config.h"
#include"../Display/Display.h"
#include"../ModeManger/ModeManager.h"
#include"../Clock/Clock.h"

void Scheduler_Task1(void)   //20 ms
{
 Display_Update();
}

void Scheduler_Task2(void)  //100 ms
{
  ModeManager_Update();
}

void Scheduler_Task3(void)  //1000 ms
{
  Clock_Update();
}

