/* 
 * File:   gpio.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:10 PM
 */

#ifndef GPIO_H
#define	GPIO_H

#ifdef	__cplusplus
extern "C" {
#endif

#include"gpio_Cfg.h"

#define INPUT  1
#define OUTPUT 0    
    
#define SET_PIN(PORT,PIN)   (PORT|=(1<<PIN))
#define RESET_PIN(PORT,PIN) (PORT&=~(1<<PIN))
#define READ_PIN(PORT,PIN)  (PORT&(1<<PIN))  
#define TOGGLE_PIN(PORT,PIN)(PORT^=(1<<PIN))     
    
#define SET_PIN_DIRECTION(DIRECTION_PORT,PIN,DIRECTION) (DIRECTION==OUTPUT)? (RESET_PIN(DIRECTION_PORT,PIN)) :(SET_PIN(DIRECTION_PORT,PIN))
#define SET_PORT_DIRECTION(DIRECTION_PORT,DIRECTION)    (DIRECTION==OUTPUT)? (DIRECTION_PORT=0):(DIRECTION_PORT=0XFF)

#ifdef	__cplusplus
}
#endif

#endif	/* GPIO_H */

