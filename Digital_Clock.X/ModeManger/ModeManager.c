/*
 * File:   ModeManger.c
 * Author: Abdelaziz Sayed
 *
 * Created on July 20, 2020, 10:06 PM
 */

#include"ModeManager.h"
#include"../Buttons/Buttons.h"

void ModeManager_Init(void)
{
  MODE=Normal_Mode;
}


void ModeManager_Update(void)
{
    if(ButtonsFlag.SettingButton_Flag)
    {
        switch(MODE)
        {
            case Normal_Mode: 
                         MODE=Hour_Mode;
                         break;
                         
            case Hour_Mode: 
                         MODE=Minutes_Mode;
                         break;             
        
            case Minutes_Mode: 
                         MODE=Normal_Mode;
                         break;  
        }
        ButtonsFlag.SettingButton_Flag=0;
    }

}

