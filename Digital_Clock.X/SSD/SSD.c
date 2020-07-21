/*
 * File:   SSD.c
 * Author: Abdalaziz Sayed
 *
 * Created on July 21, 2020, 2:49 AM
 */

#include"SSD.h"
#include"../ModeManger/ModeManager.h"

void SSD_DigitSelector(void)
{
    if(MODE==Normal_Mode)
    {
      
      switch(DigitSelector)
      {
          case Digit_1_:
                      SET_PIN(DIGIT1_PORT,DIGIT1_PIN);
                      RESET_PIN(DIGIT2_PORT,DIGIT2_PIN);
                      RESET_PIN(DIGIT3_PORT,DIGIT3_PIN);
                      RESET_PIN(DIGIT4_PORT,DIGIT4_PIN);
            
            case Digit_2_:
                      SET_PIN(DIGIT2_PORT,DIGIT2_PIN);
                      RESET_PIN(DIGIT1_PORT,DIGIT1_PIN);
                      RESET_PIN(DIGIT3_PORT,DIGIT3_PIN);
                      RESET_PIN(DIGIT4_PORT,DIGIT4_PIN);
            
            case Digit_3_:
                      SET_PIN(DIGIT3_PORT,DIGIT3_PIN);
                      RESET_PIN(DIGIT1_PORT,DIGIT1_PIN);
                      RESET_PIN(DIGIT2_PORT,DIGIT3_PIN);
                      RESET_PIN(DIGIT4_PORT,DIGIT4_PIN);
                   
            case Digit_4_:
                      SET_PIN(DIGIT4_PORT,DIGIT4_PIN);
                      RESET_PIN(DIGIT1_PORT,DIGIT1_PIN);
                      RESET_PIN(DIGIT2_PORT,DIGIT2_PIN);
                      RESET_PIN(DIGIT3_PORT,DIGIT3_PIN);             
      
      }
      DigitSelector=(DigitSelector+1)%NumberOfDigits;
    
    
    }    

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