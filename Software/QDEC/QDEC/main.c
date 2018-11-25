#define F_CPU 32000000
#include <atmel_start.h>
#include <util/delay.h>
#include <stdio.h>
#include "pid_controller.h"
#include "motor_controller.h"

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
	
	initSpeedContorller();
	while (1) {
		printf("I: %d, O: %d, PID: %d\r\n",(uint16_t)(1000*speed),TCC1_CCA,(uint16_t)(1000*PIDOutputGet(&pid_speed)));
		_delay_ms(1000);
	}
}
