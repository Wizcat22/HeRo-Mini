/* 
* Sensor.h
*
* Created: 24.06.2018 22:36:08
* Author: alex-
*/


#ifndef __SENSOR_H__
#define __SENSOR_H__

#include "HAL.h"

#define CLOSED 1
#define OPEN 0

class Sensor
{
//variables
public:
protected:
private:

//functions
public:
	Sensor();
	~Sensor();
	uint8_t read(void);
protected:
private:

}; //Sensor

#endif //__SENSOR_H__
