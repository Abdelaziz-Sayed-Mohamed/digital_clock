/*
 * File:   Display.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:05 PM
 */


#include"Display.h"
#include"../SSD/SSD.h"
#include"../Clock/Clock.h"
#include"../ModeManger/ModeManager.h"


static uint8_t Digit1=0;
static uint8_t Digit2=0;
static uint8_t Digit3=0;
static uint8_t Digit4=0;


 

void Display_Init(void)
{
Digit1=Clock.Hours/10;
Digit2=Clock.Hours%10;
Digit3=Clock.Minutes/10;
Digit4=Clock.Minutes%10;

}

void Display_Update(void)
{
   switch(MODE)
    {
        case Normal_Mode:
                              Display_Normal();
                              break;
                              
        case Hour_Mode:
                              Display_Hour_Setting();
                              break;                       
       
        case Minutes_Mode:
                              Display_Minutes_Setting();
                              break;                         
    }        

}




void Display_Normal(void)
{
    Display^=1;
  
    if(Display==Minutes)
    {
        SSD_Display(Clock.Minutes);  
    }
    else
    {
        SSD_Display(Clock.Hours);
    }    
   SSD_DigitSelector();
}



void Display_Hour_Setting(void)
{


}


void Display_Minutes_Setting(void)
{


}


void Display_Blink(void)
{


}