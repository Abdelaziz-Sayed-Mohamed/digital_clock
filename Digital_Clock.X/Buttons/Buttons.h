/* 
 * File:   Buttons.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:04 PM
 */

#ifndef BUTTONS_H
#define	BUTTONS_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"Buttons_Cfg.h"
    
#define NSamples   3
#define NotPressed 1
#define Pressed    0

    
typedef struct ButtonsFlag_T
{
   uint8_t UpButton_Flag :1;
   uint8_t DownButton_Flag :1; 
   uint8_t SettingButton_Flag :1; 
}ButtonsFlag_t;
ButtonsFlag_t ButtonsFlag;

void Buttons_Init(void);
void Buttons_Update(void);
void EXTI_SettingButton_CB(void);


#ifdef	__cplusplus
}
#endif

#endif	/* BUTTONS_H */

