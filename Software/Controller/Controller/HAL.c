/*
* HAL.c
*
* Created: 13.06.2018 23:04:22
*  Author: alex-
*/

//PIN DEFINITION
//1-VCC
//2-PA4-LEDA
//3-PA5-ADDC
//4-PA6-ADDB
//5-PA7-ADDA
//6-PB3-SENSE
//7-PB2-PWMC
//8-PB1-PWMB
//9-PB0-PWMA
//10-PA0-UPDI
//11-PA1-SDA
//12-PA2-SCL
//13-PA3-LEDB
//14-GND





#include "HAL.h"
#include <assert.h>

void init_hw(void){

	CPU_CCP = CCP_IOREG_gc; //Enable change of SYS-CLK Registers for 4 Clock cycles
	CLKCTRL_MCLKCTRLB = (0<<1); //Disable Sys-CLK Prescaler for 20Mhz operation

	init_led();
	init_pwm();
	init_i2c();
	init_sense();
}

void init_led(void){
	PORTA.DIRSET = (1<<LEDA)|(1<<LEDB); //Set LEDA & LEDB as output

	change_led(LEDA,HIGH);
	_delay_ms(500);
	change_led(LEDB,HIGH);
	_delay_ms(500);
	change_led(LEDA,LOW);
	_delay_ms(500);
	change_led(LEDB,LOW);
	_delay_ms(500);

}


void init_pwm(void){
	
}


void init_i2c(void){
	
}


void init_sense(void){
	
}

void change_led(uint8_t led, uint8_t state){

	assert(led == LEDA || led == LEDB);

	if (state >= HIGH)
	{
		PORTA.OUTSET = (1<<led);
	} 
	else
	{
		PORTA.OUTCLR = (1<<led);
	}
}