/*
 * File:   Buttons.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:03 PM
 */
#include"Buttons.h"
#include"../ModeManger/ModeManager.h"
#include"string.h"
#include"../gpio/gpio.h"


uint8_t Debounce_UpButton[NSamples];
uint8_t Debounce_DownButton[NSamples];

void Buttons_Init(void)
{
    memset(Debounce_UpButton,NotPressed,sizeof(Debounce_UpButton));
    memset(Debounce_DownButton,NotPressed,sizeof(Debounce_DownButton));
    
    INTEDG=1;
    INTCONbits.INTE=1;
    INTCONbits.INTF=0;
}


void Buttons_Update(void)
{
    static uint8_t Debounce_Counter=0;
    Debounce_UpButton[Debounce_Counter]=READ_PIN(UpButton_PORT,UpButton_PIN);
    Debounce_DownButton[Debounce_Counter]=READ_PIN(DownButton_PORT,DownButton_PIN);
    
    Debounce_Counter=(Debounce_Counter+1)%NSamples;
    if(Debounce_UpButton[0]==Pressed &&Debounce_UpButton[1]==Pressed &&Debounce_UpButton[2]==Pressed )
    {
        ButtonsFlag.UpButton_Flag=1;
         
        Debounce_UpButton[0]=NotPressed ;Debounce_UpButton[1]=NotPressed ;Debounce_UpButton[2]=NotPressed ; 
    }
    
    if(Debounce_DownButton[0]==Pressed &&Debounce_DownButton[1]==Pressed &&Debounce_DownButton[2]==Pressed )
    {
        ButtonsFlag.DownButton_Flag=1;
         
        Debounce_DownButton[0]=NotPressed ;Debounce_DownButton[1]=NotPressed ;Debounce_DownButton[2]=NotPressed ; 
    }   
    
}

void EXTI_SettingButton_CB(void)
{  
    ButtonsFlag.SettingButton_Flag=1;
    
}

