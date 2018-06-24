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
#define SENSE PIN3_bm
#define PWMA 0
#define PWMB 1
#define PWMC 2

#define ADDA PIN7_bp
#define ADDB PIN6_bp
#define ADDC PIN5_bp
#define I2C_ACK TWI_SCMD_RESPONSE_gc
#define I2C_TCOMP TWI_SCMD_COMPTRANS_gc
#define F_SERVO 50
#define PERIOD_TIMER ((F_CPU) / ((uint16_t)(F_SERVO)*8))


#include <avr/io.h>
#include <util/delay.h>
#include <avr/wdt.h>

void init_hw(void);
void init_led(void);
void init_pwm(void);
void init_i2c(void);
void init_sense(void);
void led_write(uint8_t led, uint8_t state);
uint8_t sense_read(void);
void pwm_write(uint8_t channel,uint16_t value);
uint8_t i2c_read_byte(void);
void i2c_write_byte(uint8_t data);
void i2c_write_response(uint8_t response);

#endif /* HAL_H_ */