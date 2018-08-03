/*
* Leg.cpp
*
* Created: 24.06.2018 22:45:52
* Author: alex-
*/


#include "Leg.h"

// default constructor
Leg::Leg():_servo_coxa(SERVOA),_servo_femur(SERVOB),_servo_tibia(SERVOC)
{
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

void set_position(int8_t x,int8_t y, int8_t z){

	/*
	//OLD HEXAPOD CODE
	if (side == 1)
	{
	xPos = -xPos;
	yPos = -yPos;
	zPos = zPos;
	}


	lastZPos = zPos;

	float a = 0.0f; //Alpha
	float b = 0.0f; //Beta
	float c = 0.0f; //Gamma

	int8_t alpha = 0;
	int8_t beta = 0;
	int8_t gamma = 0;

	float l1 = 0.0f;
	float l2 = 0.0f;
	float l3 = 0.0f;

	//ALPHA
	a = atan2(-xPos, A1 + A2 - yPos);

	//BETA
	l1 = HEIGHT - zPos;
	l2 = A2 - yPos;
	l3 = sqrt(l1 * l1 + l2 * l2);

	b = acos(l1 / l3);

	b = b + acos((A2 * A2 - A3 * A3 + l3 * l3) / (2 * A2 * l3));

	//GAMMA
	c = acos((A3 * A3 - l3 * l3 + A2 * A2) / (2 * A3 * A2));

	//RAD TO DEG


	alpha = (int8_t)(a * 180 / M_PI);
	beta = (int8_t)(b * 180 / M_PI - 90);
	gamma = (int8_t)(c * 180 / M_PI - 90);

	//if TCP is out of reach
	if ((gamma==0 && beta==0) && (yPos>10 || zPos <-10))
	{
	//signal a error
	led_set_color(C_RED ,1,0.005);
	//set TCP to last possible position
	servo_set_deg(lastGamma,lastBeta,alpha);
	}
	else{
	servo_set_deg(gamma,beta,alpha);
	lastAlpha = alpha;
	lastBeta = beta;
	lastGamma = gamma;

	}
	*/

}

void Leg::set_degrees(int8_t alpha,int8_t beta, int8_t gamma){
	_servo_coxa.servo_write_deg(alpha);
	_servo_femur.servo_write_deg(beta);
	_servo_tibia.servo_write_deg(gamma);
}