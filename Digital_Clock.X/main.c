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

#include"Interrupt/Interrupt.h"

void main(void) {
    GPIO_Init();
    Display_Init();
    Clock_Init();
    ModeManager_Init();
    Buttons_Init();
    Timer_Init();
    Scheduler_Init();
    Timer_Start();
    while(1);
    
    return;
}
