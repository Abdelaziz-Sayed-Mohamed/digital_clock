/*
 * File:   SSD.c
 * Author: Abdalaziz Sayed
 *
 * Created on July 21, 2020, 2:49 AM
 */

#include"SSD.h"
#include"../ModeManger/ModeManager.h"
#include"../Clock/Clock.h"
#include"../Display/Display.h"








void SSD_DigitSelector(void)
{
      
      switch(DigitSelector)
      {
            case Digit_1_:
                        if(Enable_Hours==ON)
                        {   
                            SET_PIN(DIGIT1_PORT,DIGIT1_PIN);
                        }    
                        RESET_PIN(DIGIT2_PORT,DIGIT2_PIN);
                        RESET_PIN(DIGIT3_PORT,DIGIT3_PIN);
                        RESET_PIN(DIGIT4_PORT,DIGIT4_PIN);
                        SSD_Display(Digit1);
                        break;
            
            case Digit_2_:
                        if(Enable_Hours==ON)        
                        {   
                            SET_PIN(DIGIT2_PORT,DIGIT2_PIN);
                        }    
                        RESET_PIN(DIGIT1_PORT,DIGIT1_PIN);
                        RESET_PIN(DIGIT3_PORT,DIGIT3_PIN);
                        RESET_PIN(DIGIT4_PORT,DIGIT4_PIN);
                        
                        SET_PIN(DOT_PORT,DOT_PIN);
                        SSD_Display(Digit2);
                        break;
            case Digit_3_:
                        if(Enable_Minutes==ON)
                        {   
                            SET_PIN(DIGIT3_PORT,DIGIT3_PIN);
                        }    
                        RESET_PIN(DIGIT1_PORT,DIGIT1_PIN);
                        RESET_PIN(DIGIT2_PORT,DIGIT2_PIN);
                        RESET_PIN(DIGIT4_PORT,DIGIT4_PIN);
                        SSD_Display(Digit3);
                        break;
            case Digit_4_:
                        if(Enable_Minutes==ON) 
                        {   
                            SET_PIN(DIGIT4_PORT,DIGIT4_PIN);
                        }    
                        RESET_PIN(DIGIT1_PORT,DIGIT1_PIN);
                        RESET_PIN(DIGIT2_PORT,DIGIT2_PIN);
                        RESET_PIN(DIGIT3_PORT,DIGIT3_PIN);             
                        SSD_Display(Digit4);
                        break;
      }
       DigitSelector=(DigitSelector+1)%NumberOfDigits;
      
      
    
      

}


void SSD_Display(uint8_t Number)
{

   switch(Number)
    {
     case 0:
        SSD_PORT=SSD_Zero;
        break;
  
     case 1:
        SSD_PORT=SSD_One;
        break;
  
     case 2:
        SSD_PORT=SSD_Two;
        break;
  
     case 3:
        SSD_PORT=SSD_Three;
        break;
  
     case 4:
        SSD_PORT=SSD_Four;
        break;
  
     case 5:
        SSD_PORT=SSD_Five;
        break;
  
     case 6:
        SSD_PORT=SSD_Six;
        break;
  
     case 7:
        SSD_PORT=SSD_Seven;
        break;
  
     case 8:
        SSD_PORT=SSD_Eight;
        break;
  
     case 9:
        SSD_PORT=SSD_Nine;
        break;
              
    }	


}



