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
   
    
#define SSD_Zero                        0b0111111
#define SSD_One                         0b0000110
#define SSD_Two                         0b1011011
#define SSD_Three                       0b1001111
#define SSD_Four                        0b1100110
#define SSD_Five                        0b1101101
#define SSD_Six                         0b1111101
#define SSD_Seven                       0b0000111
#define SSD_Eight                       0b1111111
#define SSD_Nine                        0b1101111
    
    
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

