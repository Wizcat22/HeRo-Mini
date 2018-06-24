/*
* Controller.c
*
* Created: 13.06.2018 23:02:20
* Author : alex-
*/

#include <avr/io.h>

#include "HAL.h"
#include "Led.h"
#include "Sensor.h"
#include "Servo.h"
#include "Leg.h"

int main(void)
{
	init_hw();
	Led led;
	Leg leg;
	while (1)
	{
		wdt_reset();

		led.write(GREEN);
		_delay_ms(1000);
		for (int8_t i=-(SERVO_RANGE/2);i<(SERVO_RANGE/2);i++)
		{	
			led.write(ORANGE);
			leg.test(i);
			_delay_ms(20);
		}
		led.write(RED);
		_delay_ms(1000);


	}
}

