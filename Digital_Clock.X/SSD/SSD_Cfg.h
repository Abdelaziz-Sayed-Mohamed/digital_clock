/* 
 * File:   SSD_Cfg.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 21, 2020, 2:49 AM
 */

#ifndef SSD_CFG_H
#define	SSD_CFG_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"../config.h"
#include"../gpio/gpio.h"
    
#define DIGIT1_PORT             _DIGIT1_PORT_          
#define DIGIT1_PIN              _DIGIT1_PIN_  
    
#define DIGIT2_PORT             _DIGIT2_PORT_          
#define DIGIT2_PIN              _DIGIT2_PIN_          
   
#define DIGIT3_PORT             _DIGIT3_PORT_                 
#define DIGIT3_PIN              _DIGIT3_PIN_          
   
   
#define DIGIT4_PORT             _DIGIT4_PORT_                  
#define DIGIT4_PIN              _DIGIT4_PIN_  
    
#define DOT_PORT              _DOT_PORT_                    
#define DOT_PIN               _DOT_PIN_                     
  
#define SSD_PORT                _SSD_PORT_           

    
#define SSD_Blink_TaskPeroid 5
    
#ifdef	__cplusplus
}
#endif

#endif	/* SSD_CFG_H */

