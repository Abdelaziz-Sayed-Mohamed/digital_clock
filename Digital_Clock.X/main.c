/*
 * File:   main.c
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 9:57 PM
 */

#include "config.h"
#include"Timer/Timer.h"
#include"Scheduler/Scheduler.h"
#include"Display/Display.h"
#include"ModeManger/ModeManager.h"
#include"Clock/Clock.h"
#include"gpio/gpio.h"

#define _XTAL_FREQ 8000000

void main(void) {
    GPIO_Init();
    Display_Init();
    Clock_Init();
    ModeManager_Init();
    Timer_Init();
    Scheduler_Init();
    Timer_Start();
    Scheduler_Update();
    
    return;
}
