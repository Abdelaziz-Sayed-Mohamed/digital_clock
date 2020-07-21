/* 
 * File:   Buttons_Cfg.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 21, 2020, 12:19 AM
 */

#ifndef BUTTONS_CFG_H
#define	BUTTONS_CFG_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"../config.h"
#include"../gpio/gpio.h"    
#define   SettingButton_PORT      _SettingButton_PORT_      
#define   SettingButton_PIN       _SettingButton_PIN_       

#define   UpButton_PORT           _UpButton_PORT_              
#define   UpButton_PIN            _UpButton_PIN_            
   
#define   DownButton_PORT         _DownButton_PORT_           
#define   DownButton_PIN          _DownButton_PIN_          
    

#ifdef	__cplusplus
}
#endif

#endif	/* BUTTONS_CFG_H */

