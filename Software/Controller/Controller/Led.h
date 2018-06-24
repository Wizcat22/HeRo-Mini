/* 
* Led.h
*
* Created: 24.06.2018 22:17:34
* Author: alex-
*/


#ifndef __LED_H__
#define __LED_H__

#include "HAL.h"

#define OFF 0
#define RED 1
#define ORANGE 2
#define GREEN 3

class Led
{
//variables
public:
protected:
private:
	

//functions
public:
	Led();
	~Led();
	void write(uint8_t state);
protected:
private:

}; //Led

#endif //__LED_H__
