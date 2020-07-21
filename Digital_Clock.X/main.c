/*
 * File:   main.c
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 9:57 PM
 */

#include "config.h"
#include"Timer/Timer.h"
#include"Scheduler/Scheduler.h"

void main(void) {
    
    Timer_Init();
    Scheduler_Init();
    Timer_Start();
    Scheduler_Update();
    
    return;
}
