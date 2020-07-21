/*
 * File:   Clock.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 21, 2020, 1:09 AM
 */


#include"Clock.h"
#include"../Buttons/Buttons.h"
#include"../ModeManger/ModeManager.h"

void Clock_Init(void)
{    
    Clock.Second=0;
    Clock.Minutes=0;
    Clock.Hours=0;
    
}

void Clock_Update(void)
{      
    switch(MODE)
    {
        case Normal_Mode:
                              Clock_Normal();
                              break;
                              
        case Hour_Mode:
                              Clock_Hour_Setting();
                              break;                       
       
        case Minutes_Mode:
                              Clock_Minutes_Setting();
                              break;                         
    }        
 
}


void Clock_Normal(void)
{

    Clock.Second++;
        
    if(Clock.Second==60)
    {
      Clock.Minutes++;
      Clock.Second=0;
    }
    
    if(Clock.Minutes==60)
    {
      Clock.Hours++;
      Clock.Minutes=0;
    } 
    if(Clock.Hours==24)
    {
      Clock.Hours=0;
    }

}


void Clock_Hour_Setting(void)
{
    if(ButtonsFlag.UpButton_Flag&&!ButtonsFlag.DownButton_Flag)
    {
        if(Clock.Hours==23)
        {
            Clock.Hours=0;
        }
        else
        {
            Clock.Hours++;
        }
      
    }
    else if(ButtonsFlag.DownButton_Flag&&ButtonsFlag.UpButton_Flag)
    {   
         if(Clock.Hours==0)
        {
            Clock.Hours=23;
        }
        else
        {
         Clock.Hours--; 
        }    
                   
    }
    
  
}

void Clock_Minutes_Setting(void)
{
  if(ButtonsFlag.UpButton_Flag&&!ButtonsFlag.DownButton_Flag)
    {
        if(Clock.Minutes==59)
        {   
            Clock.Hours++;
            Clock.Minutes=0;
        }
        else
        {
            Clock.Minutes++;
        }    
        
    }
    else if(ButtonsFlag.DownButton_Flag&&ButtonsFlag.UpButton_Flag)
    {
        if(Clock.Minutes==0)
        {
            Clock.Hours--;
            Clock.Minutes=59;
        }
        else
        {
            Clock.Minutes--;
        } 
    }
       

}