// Hexapod.h

#ifndef _HEXAPOD_h
#define _HEXAPOD_h

#if defined(ARDUINO) && ARDUINO >= 100
#include "arduino.h"
#else
#include "WProgram.h"
#endif

#include "Leg.h"

class HexapodClass
{
protected:
	uint8_t lastDirection = 250;
	float t = 0;
	uint8_t move = 0;
	LegClass legs[6];

public:
	enum Directions :uint8_t { POSE, XY, ROTATE, TURN, DANCE };
	enum Modes :uint8_t { NORMAL };
	void init();
	void walk(int8_t x, int8_t y, uint8_t mode);
	void turn(int8_t x, int8_t a, uint8_t mode);
	void pose(float degZ, float degY, float degX, float distA, float distB, float distC, uint8_t mode);
	void dance(int8_t inc);
	void centerLegs();
	void rotate(int8_t inc_r, uint8_t mode);
};

#endif

