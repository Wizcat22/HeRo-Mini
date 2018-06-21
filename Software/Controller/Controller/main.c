/*
* Controller.c
*
* Created: 13.06.2018 23:02:20
* Author : alex-
*/

#include <avr/io.h>

#include "HAL.h"

int main(void)
{
	init_hw();

	while (1)
	{
		wdt_reset();
		if (sense_read()==HIGH)
		{
		led_write(LEDA,HIGH);
		led_write(LEDB,LOW);
			for (int8_t i=-(SERVO_RANGE/2);i<(SERVO_RANGE/2);i++)
			{
				servo_write_deg(SERVOA,i);
				servo_write_deg(SERVOB,i);
				servo_write_deg(SERVOC,i);
			}
		} 
		else
		{
		led_write(LEDB,HIGH);
		led_write(LEDA,LOW);
		servo_write_deg(SERVOA,0);
		servo_write_deg(SERVOB,0);
		servo_write_deg(SERVOC,0);
		}


	}
}

