// 
// 
// 

#include "Gamepad.h"

void GamepadClass::update(uint8_t * data, uint8_t size)
{
	if (size>=8)
	{
		left_stick_x = (int8_t)data[0];
		left_stick_y = (int8_t)data[1];

		right_stick_x = (int8_t)data[2];
		right_stick_y = (int8_t)data[3];

		left_trigger = data[4];
		right_trigger = data[5];

		up = ((data[6] >> 0) & 1);
		down = ((data[6] >> 1) & 1);
		left = ((data[6] >> 2) & 1);
		right = ((data[6] >> 3) & 1);
		start = ((data[6] >> 4) & 1);
		back = ((data[6] >> 5) & 1);
		left_stick_btn = ((data[6] >> 6) & 1);
		right_stick_btn = ((data[6] >> 7) & 1);

		left_shoulder = ((data[7] >> 0) & 1);
		right_shoulder = ((data[7] >> 1) & 1);
		a = ((data[7] >> 4) & 1);
		b = ((data[7] >> 5) & 1);
		x = ((data[7] >> 6) & 1);
		y = ((data[7] >> 7) & 1);
	}
	
}

