/* 
 * File:   ModeManager.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 20, 2020, 10:08 PM
 */

#ifndef MODEMANAGER_H
#define	MODEMANAGER_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"ModeManager_Cfg.h"
    
typedef enum MODE_T
{
    Normal_Mode=0,
    Hour_Mode=1,
    Minutes_Mode=2        
}MODE_T;

MODE_T MODE;

void ModeManager_Init(void);
void ModeManager_Update(void);
#ifdef	__cplusplus
}
#endif

#endif	/* MODEMANAGER_H */

