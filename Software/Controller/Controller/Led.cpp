/*
* Led.cpp
*
* Created: 24.06.2018 22:17:34
* Author: alex-
*/

#include "HAL.h"
#include "Led.h"


// default constructor
Led::Led()
{
} //Led

// default destructor
Led::~Led()
{
} //~Led


void Led::write(uint8_t state){
	
	switch(state){
		case OFF:
		led_write(LEDA,LOW);
		led_write(LEDB,LOW);
		break;
		case RED:
		led_write(LEDA,LOW);
		led_write(LEDB,HIGH);
		break;
		case ORANGE:
		led_write(LEDA,HIGH);
		led_write(LEDB,HIGH);
		break;
		case GREEN:
		led_write(LEDA,HIGH);
		led_write(LEDB,LOW);
		break;
	}

	
}