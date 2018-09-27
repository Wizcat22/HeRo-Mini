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
	//Left or right Leg
	uint8_t invert;
	/* Leg positions
	* 0(12) \ ___ / 1(8)
	*        | ^ |
	* 2(14) -|   |- 3(10)
	*        |___|
	* 4(9)  /     \ 5(13)
	*/
	int8_t alpha_offset;
	Sensor _sensor;
	Servo _servo_coxa;
	Servo _servo_femur;
	Servo _servo_tibia;

	//functions
	public:
	Leg(uint8_t addr);
	~Leg();
	void test(int8_t deg);
	void set_position(int8_t x,int8_t y, int8_t z);
	void set_degrees(int8_t alpha,int8_t beta, int8_t gamma);
	protected:
	private:

}; //Leg

#endif //__LEG_H__
