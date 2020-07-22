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
#include"../Buttons/Buttons.h"
#include"../gpio/gpio.h"


void Scheduler_Task1(void)   //1 ms
{ 
 
  Display_Update();
  
}

void Scheduler_Task2(void)  //20 ms
{
  TOGGLE_PIN(_LED3_PORT_,_LED3_PIN_);
  Buttons_Update();
  ModeManager_Update();
  
}

void Scheduler_Task3(void)  //100 ms
{
    
    Clock_Update();
  
}

