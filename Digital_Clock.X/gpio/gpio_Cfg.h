/* 
 * File:   gpio_Cfg.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:09 PM
 */

#ifndef GPIO_CFG_H
#define	GPIO_CFG_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"../config.h"
    
#define _SettingButton_PORT_        PORTB
#define _SettingButton_DIRECTION_   TRISB
#define _SettingButton_PIN_         0

#define _UpButton_PORT_             PORTB
#define _UpButton_DIRECTION_        TRISB
#define _UpButton_PIN_              2
   
#define _DownButton_PORT_           PORTB 
#define _DownButton_DIRECTION_      TRISB
#define _DownButton_PIN_            1    
    
#define _DIGIT1_PORT_               PORTA
#define _DIGIT1_DIRECTION_          TRISA    
#define _DIGIT1_PIN_                2   
    
#define _DIGIT2_PORT_               PORTA
#define _DIGIT2_DIRECTION_          TRISA     
#define _DIGIT2_PIN_                3 
    
#define _DIGIT3_PORT_               PORTA
#define _DIGIT3_DIRECTION_          TRISA     
#define _DIGIT3_PIN_                4
    
    
#define _DIGIT4_PORT_               PORTA
#define _DIGIT4_DIRECTION_          TRISA     
#define _DIGIT4_PIN_                5 
    
#define _DOT_PORT_                  PORTD
#define _DOT_DIRECTION_             TRISD     
#define _DOT_PIN_                   7 
    
    
#define _SSD_PORT_                  PORTD
#define _SSD_PORT_DIRECTION_        TRISD
    
#define _LED4_PORT_                 PORTB
#define _LED4_DIRECTION_            TRISB     
#define _LED4_PIN_                  4     

#define _LED3_PORT_                 PORTB
#define _LED3_DIRECTION_            TRISB     
#define _LED3_PIN_                  3       


#ifdef	__cplusplus
}
#endif

#endif	/* GPIO_CFG_H */

