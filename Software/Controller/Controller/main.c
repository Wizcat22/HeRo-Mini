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
				pwm_write(PWMA,40000);
				pwm_write(PWMB,40000);
				pwm_write(PWMC,40000);
		} 
		else
		{
		led_write(LEDB,HIGH);
		led_write(LEDA,LOW);
				pwm_write(PWMA,20000);
				pwm_write(PWMB,20000);
				pwm_write(PWMC,20000);
		}


	}
}

