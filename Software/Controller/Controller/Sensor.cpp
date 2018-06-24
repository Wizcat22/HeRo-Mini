/* 
* Sensor.cpp
*
* Created: 24.06.2018 22:36:08
* Author: alex-
*/


#include "Sensor.h"

// default constructor
Sensor::Sensor()
{
} //Sensor

// default destructor
Sensor::~Sensor()
{
} //~Sensor

uint8_t Sensor::read(void){
	if (sense_read() == LOW)
	{
		return CLOSED;
	} 
	return OPEN;
	
}