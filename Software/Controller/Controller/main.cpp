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
	
	char data=0;
	while (1)
	{
		wdt_reset();
		if (TWI0_SSTATUS & (1<<TWI_APIF_bp))
		{
			data = TWI0_SDATA; //Address + W
			i2c_write_response(TWI_SCMD_RESPONSE_gc);
			TWI0_SSTATUS |= (TWI_DIF_bm | TWI_APIF_bm);
			data = i2c_read_byte();
			TWI0_SSTATUS |= (TWI_DIF_bm | TWI_APIF_bm);
			i2c_write_response(TWI_SCMD_COMPTRANS_gc);
		}
		
		if (data == GREEN || data == RED || data == ORANGE)
		{
			led.write(data);
		}
		else{
			led.write(OFF);
		}
		
		
		
		
		
		
		
		
		
		
		
		//wdt_reset();
//
		//led.write(GREEN);
		//_delay_ms(1000);
		//for (int8_t i=-(SERVO_RANGE/2);i<(SERVO_RANGE/2);i++)
		//{	
			//led.write(ORANGE);
			//leg.test(i);
			//_delay_ms(20);
		//}
		//led.write(RED);
		//_delay_ms(1000);


	}
}

