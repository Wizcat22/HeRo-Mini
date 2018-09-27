/*
* Servo.cpp
*
* Created: 24.06.2018 21:31:53
*  Author: alex-
*/

#include <avr/io.h>
#include "Servo.h"
#include <assert.h>


Servo::Servo(){
	
}

Servo::Servo(uint8_t channel){
	_channel = channel;
}

void Servo::servo_write_us(uint16_t servo_time_us){
	assert(servo_time_us<=SERVO_MAX_TIME && servo_time_us >= SERVO_MIN_TIME);
	pwm_write(_channel,(uint16_t)(servo_time_us/0.4)); //0.4 = PRESCALER * 1000000/F_CPU = 8*1000000/20000000 = time per timerclock in us
}

void Servo::servo_write_deg(int8_t deg){
	assert(deg >= (-SERVO_RANGE/2) && deg <= (SERVO_RANGE/2));
	servo_write_us(((SERVO_MAX_TIME-SERVO_MIN_TIME)/SERVO_RANGE) * deg + ((SERVO_MAX_TIME+SERVO_MIN_TIME)/2));
}