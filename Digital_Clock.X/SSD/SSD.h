/* 
 * File:   SSD.h
 * Author: Abdalaziz Sayed
 *
 * Created on July 21, 2020, 2:49 AM
 */

#ifndef SSD_H
#define	SSD_H

#ifdef	__cplusplus
extern "C" {
#endif
#include"SSD_Cfg.h"
    
#define NumberOfDigits 4 
    
    
#define SSD_Zero                        0b00111111
#define SSD_One                         0b00000110
#define SSD_Two                         0b01011011
#define SSD_Three                       0b01001111
#define SSD_Four                        0b01100110
#define SSD_Five                        0b01101101
#define SSD_Six                         0b01111101
#define SSD_Seven                       0b00000111
#define SSD_Eight                       0b01111111
#define SSD_Nine                        0b01101111
    
    
typedef enum DigitSelector_T
{ 
    Digit_1_=0,
    Digit_2_=1,
    Digit_3_=2,
    Digit_4_=3
          
}DigitSelector_t;

DigitSelector_t DigitSelector;


void SSD_DigitSelector(void);
void SSD_Display(uint8_t Number);
#ifdef	__cplusplus
}
#endif

#endif	/* SSD_H */

