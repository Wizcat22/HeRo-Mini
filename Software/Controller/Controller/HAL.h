/*
* HAL.h
*
* Created: 13.06.2018 23:04:03
*  Author: alex-
*/

//PIN DEFINITION
//1-VCC
//2-PA4-LEDA
//3-PA5-ADDC
//4-PA6-ADDB
//5-PA7-ADDA
//6-PB3-SENSE
//7-PB2-PWMC
//8-PB1-PWMB
//9-PB0-PWMA
//10-PA0-UPDI
//11-PA1-SDA
//12-PA2-SCL
//13-PA3-LEDB
//14-GND


#ifndef HAL_H_
#define HAL_H_

#define F_CPU 20000000
#define HIGH 1
#define LOW 0
#define LEDA PIN4_bp
#define LEDB PIN3_bp

#include <avr/io.h>
#include <util/delay.h>
#include <avr/wdt.h>

void init_hw(void);
void init_led(void);
void init_pwm(void);
void init_i2c(void);
void init_sense(void);
void change_led(uint8_t led, uint8_t state);


#endif /* HAL_H_ */