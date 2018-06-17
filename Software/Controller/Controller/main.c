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
				servo_write_us(SERVOA,(uint16_t)SERVO_MAX_TIME);
				servo_write_us(SERVOB,(uint16_t)SERVO_MAX_TIME);
				servo_write_us(SERVOC,(uint16_t)SERVO_MAX_TIME);
		} 
		else
		{
		led_write(LEDB,HIGH);
		led_write(LEDA,LOW);
				servo_write_us(SERVOA,(uint16_t)SERVO_MIN_TIME);
				servo_write_us(SERVOB,(uint16_t)SERVO_MIN_TIME);
				servo_write_us(SERVOC,(uint16_t)SERVO_MIN_TIME);
		}


	}
}

