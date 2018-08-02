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
	CLKCTRL_MCLKCTRLB = (0<<1); //Disable Sys-CLK Prescaler for full 20Mhz operation

	init_led(); //Initialize duo led
	init_sense(); //Initialize sense input
	init_pwm(); //Initialize servo pwm
	init_i2c(); //Initialize i2c in slave mode

}

void init_led(void){
	PORTA.DIRSET = (1<<LEDA)|(1<<LEDB); //Set LEDA & LEDB as output

	led_write(LEDA,HIGH);
	_delay_ms(500);
	led_write(LEDB,HIGH);
	_delay_ms(500);
	led_write(LEDA,LOW);
	_delay_ms(500);
	led_write(LEDB,LOW);
	_delay_ms(500);

}


void init_pwm(void){
	PORTB.DIRSET = 7; //Set LEDA & LEDB as output
	TCA0_SINGLE_CTRLA = TCA_SINGLE_CLKSEL_DIV8_gc | (1<<TCA_SINGLE_ENABLE_bp); //Set timer prescaler to 8x
	//TCA0_SINGLE_CTRLB = (1<<TCA_SINGLE_CMP0_bp)|(1<<TCA_SINGLE_CMP1_bp)|(1<<TCA_SINGLE_CMP2_bp)|(1<<TCA_SINGLE_ALUPD_bp)|(1<<TCA_SINGLE_WGMODE_SINGLESLOPE_gc); //Enable pwm outputs 0, 1 and 2. Set timermode to single-slope pwm
	TCA0_SINGLE_CTRLB = 115; //Enable pwm outputs 0, 1 and 2. Set timermode to single-slope pwm
	TCA0_SINGLE_PERBUF = PERIOD_TIMER; //Set timer period to 50000 (0.02s with 20Mhz/8)
	TCA0_SINGLE_CMP0BUF = 0; //Set compare value of output 0 to 0.
	TCA0_SINGLE_CMP1BUF = 0; //Set compare value of output 1 to 0.
	TCA0_SINGLE_CMP2BUF = 0; //Set compare value of output 2 to 0.
	//TCA0_SINGLE_CTRLA |= (1<<TCA_SINGLE_ENABLE_bp); //Enable timer

}


void init_i2c(void){
	PORTA.DIRCLR = (1<<ADDA)|(1<<ADDB)|(1<<ADDC); //Set address pins as input
	PORTA_PIN5CTRL = (1<<PORT_PULLUPEN_bp); //Enable pullup on address pin
	PORTA_PIN6CTRL = (1<<PORT_PULLUPEN_bp); //Enable pullup on address pin
	PORTA_PIN7CTRL = (1<<PORT_PULLUPEN_bp); //Enable pullup on address pin

	_delay_ms(50);

	PORTMUX.CTRLB = (1<<PORTMUX_TWI0_bp); //Use alternate pins for i2c
	
	//Set Address
	uint8_t addr = 8;
	if ((PORTA.IN & (1<<ADDA)) != 0)
	{
		addr+=4;
	}
	if ((PORTA.IN & (1<<ADDB)) != 0)
	{
		addr+=2;
	}
	if ((PORTA.IN & (1<<ADDC)) != 0)
	{
		addr+=1;
	}
	TWI0_SADDR = addr<<1;
	TWI0_SCTRLA = (1<<TWI_ENABLE_bp); //Enable twi in slave mode

}


void init_sense(void){

	PORTB.DIRCLR = (uint8_t)(1<<SENSE);
	
}

void led_write(uint8_t led, uint8_t state){

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

uint8_t sense_read(void){
	if (PORTB.IN & SENSE){
		return HIGH;
	}
	else{
		return LOW;
	}
}

void pwm_write(uint8_t channel,uint16_t value){
	assert(value<=PERIOD_TIMER);

	switch(channel){
		case 0: TCA0_SINGLE_CMP0BUF = value;
		break;
		case 1: TCA0_SINGLE_CMP1BUF = value;
		break;
		case 2: TCA0_SINGLE_CMP2BUF = value;
		break;
		default:
		break;
	}
}



uint8_t i2c_read_byte(void){
	while (((TWI0_SSTATUS & (1<<TWI_CLKHOLD_bp))==0)){}
	return TWI0_SDATA;
}

void i2c_write_byte(uint8_t data){
	while (((TWI0_SSTATUS & (1<<TWI_CLKHOLD_bp))==0)){}
	TWI0.SSTATUS |= (TWI_DIF_bm | TWI_APIF_bm);
	TWI0.SDATA = data;
	while (((TWI0_SSTATUS & (1<<TWI_DIF_bp))==0)){}
}

void i2c_write_response(uint8_t response){
	assert((response == TWI_SCMD_RESPONSE_gc) | (response == TWI_SCMD_COMPTRANS_gc));

	TWI0_SCTRLB = response;
}