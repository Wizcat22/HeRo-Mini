/*
* Leg.cpp
*
* Created: 24.06.2018 22:45:52
* Author: alex-
*/


#include "Leg.h"

// default constructor
Leg::Leg(uint8_t addr):_servo_coxa(SERVOA),_servo_femur(SERVOB),_servo_tibia(SERVOC)
{
	//if (addr == 12 ||addr == 9 || addr == 14)
	//{
	//invert = 1;
	//}
	//else
	//{
	//invert = 0;
	//}
	
	switch (addr)
	{
		case 8: invert = 0; alpha_offset = 45;
		break;
		case 9: invert = 1; alpha_offset = 45;
		break;
		case 10: invert = 0; alpha_offset = 0;
		break;
		case 12: invert = 1; alpha_offset = -45 ;
		break;
		case 13: invert = 0; alpha_offset = -45;
		break;
		case 14: invert = 1; alpha_offset = 0;
		break;
	}
	
	
} //Leg

// default destructor
Leg::~Leg()
{
} //~Leg

void Leg::test(int8_t deg){

	if (_sensor.read()==CLOSED)
	{
		_servo_coxa.servo_write_deg(deg);
		_servo_femur.servo_write_deg(deg);
		_servo_tibia.servo_write_deg(deg);
	}
	else{
		_servo_coxa.servo_write_deg(0);
		_servo_femur.servo_write_deg(0);
		_servo_tibia.servo_write_deg(0);
	}


}

void Leg::set_position(int8_t x,int8_t y, int8_t z){
	
	if (invert == 1)
	{
		x = -x;
		y = -y;
	}

	float aa = 0.0f; //Alpha
	float bb = 0.0f; //Beta
	float cc = 0.0f; //Gamma

	int8_t A1 = 17;
	int8_t A2 = 42;
	int8_t A3 = 75;

	float l1 = 0.0f;
	float l2 = 0.0f;
	float l3 = 0.0f;

	//ALPHA
	aa = atan2(-x, A1 + A2 - y);

	//BETA
	l1 = 75 - z;
	l2 = A2 - y;
	l3 = sqrt(l1 * l1 + l2 * l2);

	bb = acos(l1 / l3);

	bb = bb + acos((A2 * A2 - A3 * A3 + l3 * l3) / (2 * A2 * l3));

	//GAMMA
	cc = acos((A3 * A3 - l3 * l3 + A2 * A2) / (2 * A3 * A2));


	_servo_coxa.servo_write_deg((int8_t)(aa * 180 / M_PI - alpha_offset));
	_servo_femur.servo_write_deg((int8_t)(bb * 180 / M_PI - 90));
	_servo_tibia.servo_write_deg((int8_t)(cc * 180 / M_PI - 90));

}

void Leg::set_degrees(int8_t alpha,int8_t beta, int8_t gamma){
	_servo_coxa.servo_write_deg(alpha);
	_servo_femur.servo_write_deg(beta);
	_servo_tibia.servo_write_deg(gamma);
}