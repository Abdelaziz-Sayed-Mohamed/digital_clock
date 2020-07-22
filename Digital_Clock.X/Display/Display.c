/*
 * File:   Display.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:05 PM
 */


#include"Display.h"
#include"../SSD/SSD.h"
#include"../Clock/Clock.h"


uint8_t Enable_Minutes;
uint8_t Enable_Hours; 


 

void Display_Init(void)
{
    Enable_Minutes=ON;
    Enable_Hours=ON;

    RESET_PIN(DIGIT1_PORT,DIGIT1_PIN);
    RESET_PIN(DIGIT2_PORT,DIGIT2_PIN);
    RESET_PIN(DIGIT3_PORT,DIGIT3_PIN);
    RESET_PIN(DIGIT4_PORT,DIGIT4_PIN);
    RESET_PIN(DOT_PORT,DOT_PIN);
}

void Display_Update(void)
{
   switch(MODE)
    {
        case Normal_Mode:
                              Display_Normal();
                              break;
                              
        case Hours_Mode:
                              Display_Blink(500,Hours_Mode);
                              Enable_Minutes=ON;
  
                              break;                       
       
        case Minutes_Mode:
                              Display_Blink(500,Minutes_Mode);
                              Enable_Hours=ON;
                              break;                         
    }        
    SSD_DigitSelector();
}






void Display_Blink(uint16_t Times_Ms,MODE_t _MODE_) 
{
    static uint16_t Counter=0;
       
        if(Counter*SSD_Blink_TaskPeroid==Times_Ms)
        {
            if(_MODE_==Minutes_Mode)
            {
                if(Enable_Minutes==ON)
                {
              	    Enable_Minutes=OFF;
              	    RESET_PIN(DIGIT3_PORT,DIGIT3_PIN) ;
                    RESET_PIN(DIGIT4_PORT,DIGIT4_PIN) ;
                }
                else if(Enable_Minutes==OFF)
                {
              	    Enable_Minutes=ON;
                }
                  
            }
            if(_MODE_==Hours_Mode)
            {
                if(Enable_Hours==ON)
                {
              	    Enable_Hours=OFF;
              	    RESET_PIN(DIGIT1_PORT,DIGIT1_PIN) ;
                    RESET_PIN(DIGIT2_PORT,DIGIT2_PIN) ;
                }
                else if(Enable_Hours==OFF)
                {
              	    Enable_Hours=ON;
                }
                  
            }
                   
            Counter=1;
        }  
        Counter++;
      
}

void Display_Normal(void)
{
  Enable_Minutes=ON;
  Enable_Hours=ON;
}




