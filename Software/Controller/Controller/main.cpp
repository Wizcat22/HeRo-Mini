/*
* Controller.c
*
* Created: 13.06.2018 23:02:20
* Author : Alexander Miller
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
	int8_t data_buf[3] = {0,0,0};
	uint8_t data = 0;
	
	led.write(GREEN);
	while (1)
	{
		led.write(GREEN);
		wdt_reset();
		if (TWI0_SSTATUS & (1<<TWI_APIF_bp))
		{
			led.write(ORANGE);
			data = TWI0_SDATA; //Address + W
			i2c_write_response(TWI_SCMD_RESPONSE_gc);
			for (uint8_t i=0;i<3;i++)
			{
				TWI0_SSTATUS |= (TWI_DIF_bm | TWI_APIF_bm);
				data_buf[i] = i2c_read_byte();
				TWI0_SSTATUS |= (TWI_DIF_bm | TWI_APIF_bm);
				if (i<2)
				{
					i2c_write_response(TWI_SCMD_RESPONSE_gc);
				}
			}
			i2c_write_response(TWI_SCMD_COMPTRANS_gc);
		}
		leg.set_degrees(data_buf[0],data_buf[1],data_buf[2]);
		//leg.set_position(data_buf[0],data_buf[1],data_buf[2]);
	}
}

