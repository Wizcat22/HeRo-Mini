/*
 * motor_controller.c
 *
 * Created: 25/11/2018 20:22:43
 *  Author: Alexander Miller
 */ 

#include "motor_controller.h"
#include <avr/io.h>

PIDControl pid_speed;

float p_speed = 1.0;
float i_speed = 0.0;
float d_speed = 0.01;
float t_speed = 0.0625;
float setpoint_speed = 0.5;
float speed = 0.0;
uint16_t enc=0;

void initSpeedContorller(){
	PIDInit(&pid_speed,p_speed,i_speed,d_speed,t_speed,-1000.0,1000.0,1,0);
	PIDSetpointSet(&pid_speed,setpoint_speed);
}

void calcSpeedContorller(){
	
	int16_t a = (TCC0.CNT-enc);
	if (a < 0)
	{
		a = a+3000;
	}
	speed = (a/3000.0)/t_speed;

	//printf("Div: %d\r\n",a);
	
	PIDInputSet(&pid_speed,speed);
	PIDCompute(&pid_speed);
	int16_t out = TCC1_CCA + (int16_t)(1000*PIDOutputGet(&pid_speed));
	if (out<0)
	{
		out=0;
	}
	if (out>10000)
	{
		out=10000;
	}
	TCC1_CCA = out;
	enc = TCC0.CNT;
	
}