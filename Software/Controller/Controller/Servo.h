/*
 * Servo.h
 *
 * Created: 24.06.2018 21:07:45
 *  Author: alex-
 */ 

 //SERVO DATA
 //max. range >90° && <180°
 //max. pulse length 2260us
 //min. pulse length 700us
 //max. frequency 440Hz
 //min. frequency 40Hz

#ifndef SERVO_H_
#define SERVO_H_

#include "HAL.h"

#define SERVOA PWMA
#define SERVOB PWMB
#define SERVOC PWMC
#define SERVO_RANGE 180 
#define SERVO_MAX_TIME 2260
#define SERVO_MIN_TIME 700

class Servo
{
public:
	Servo();
	Servo(uint8_t channel);
	void servo_write_us(uint16_t servo_time_us);
	void servo_write_deg(int8_t deg);
protected:
private:
	uint8_t _channel=0;
};



#endif /* SERVO_H_ */