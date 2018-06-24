/*
* Leg.h
*
* Created: 24.06.2018 22:45:52
* Author: alex-
*/


#ifndef __LEG_H__
#define __LEG_H__

#include "HAL.h"
#include "Sensor.h"
#include "Servo.h"

class Leg
{
	//variables
	public:
	protected:
	private:
	Sensor _sensor;
	Servo _servo_coxa;
	Servo _servo_femur;
	Servo _servo_tibia;

	//functions
	public:
	Leg();
	~Leg();
	void test(int8_t deg);
	void set_position(int8_t x,int8_t y, int8_t z);
	protected:
	private:

}; //Leg

#endif //__LEG_H__
