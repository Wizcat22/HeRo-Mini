// Gamepad.h

#ifndef _GAMEPAD_h
#define _GAMEPAD_h

#if defined(ARDUINO) && ARDUINO >= 100
#include "arduino.h"
#else
#include "WProgram.h"
#endif

class GamepadClass
{
protected:


public:
	uint8_t x;
	uint8_t y;
	uint8_t b;
	uint8_t a;
	uint8_t right_shoulder;
	uint8_t left_shoulder;
	uint8_t right_stick_btn;
	uint8_t left_stick_btn;
	uint8_t back;
	uint8_t start;
	uint8_t right;
	uint8_t left;
	uint8_t down;
	uint8_t up;

	int8_t left_stick_x;
	int8_t left_stick_y;
	int8_t right_stick_x;
	int8_t right_stick_y;
	uint8_t left_trigger;
	uint8_t right_trigger;

	void update(uint8_t *data,uint8_t size);
};

#endif

