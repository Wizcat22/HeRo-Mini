/*
* Controller.c
*
* Created: 13.06.2018 23:02:20
* Author : Alexander Miller
*/

#include <avr/io.h>
#include <avr/interrupt.h>

#include "HAL.h"
#include "Led.h"
#include "Sensor.h"
#include "Servo.h"
#include "Leg.h"

volatile uint32_t millis = 0;
uint32_t oldMillis = 0;

ISR(TCB0_INT_vect){
	millis++;
	TCB0_INTFLAGS = 1;
}

int main(void)
{
	init_hw();
	Led led;
	Leg leg(TWI0_SADDR>>1);
	int8_t data_buf[3] = {0,0,0};
	//float servo_deg[3] = {0,0,0};
	uint8_t data = 0;
	
	led.write(GREEN);
	sei();

	//while (1)
	//{
		//float h=0;
		//h=(servo_deg[0]-data_buf[0])/1000;
		//oldMillis = millis;
		//while(millis < oldMillis+2000){
			//
			//servo_deg[0] = servo_deg[0] - h;
			//leg.set_degrees((int8_t)servo_deg[0],0,0);
			//_delay_ms(1);
		//}
		//data_buf[0] = 30;
		//
		//oldMillis = millis;
		//while(millis < oldMillis+2000){
			//servo_deg[0] = servo_deg[0] -(servo_deg[0]-data_buf[0])*1;
			//leg.set_degrees((int8_t)servo_deg[0],0,0);
		//}
		//data_buf[0] = 0;
		//
	//}
	
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
	//leg.set_degrees(data_buf[0],data_buf[1],data_buf[2]);
	leg.set_position(data_buf[0],data_buf[1],data_buf[2]);
	}
}

