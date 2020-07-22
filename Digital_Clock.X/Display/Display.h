/* 
 * File:   Display.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:08 PM
 */

#ifndef DISPLAY_H
#define	DISPLAY_H

#ifdef	__cplusplus
extern "C" {
#endif

#include"Display_Cfg.h"
#include"../ModeManger/ModeManager.h"
    
#define ON    1
#define OFF   0
    
typedef enum Display_T
{
     Minutes=0,
     Hours=1
}Display_t;
Display_t Display; 

   
extern uint8_t Enable_Minutes;
extern uint8_t Enable_Hours; 

void Display_Init(void);
void Display_Update(void);
void Display_Normal(void);
void Display_Hour_Setting(void);
void Display_Minutes_Setting(void);
void Display_Blink(uint16_t Times_Ms,MODE_t _MODE_) ;

#ifdef	__cplusplus
}
#endif

#endif	/* DISPLAY_H */

