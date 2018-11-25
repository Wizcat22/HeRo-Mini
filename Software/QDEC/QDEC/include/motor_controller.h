/*
 * motor_controller.h
 *
 * Created: 25/11/2018 20:22:33
 *  Author: Alexander Miller
 */ 


#ifndef MOTOR_CONTROLLER_H_
#define MOTOR_CONTROLLER_H_

#include "pid_controller.h"

PIDControl pid_speed;

extern float p_speed;
extern float i_speed;
extern float d_speed;
extern float t_speed;
extern float setpoint_speed;
extern float speed;
uint16_t enc;

void initSpeedContorller();
void calcSpeedContorller();


#endif /* MOTOR_CONTROLLER_H_ */