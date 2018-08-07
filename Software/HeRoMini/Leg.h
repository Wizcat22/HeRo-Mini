// Leg.h

#ifndef _LEG_h
#define _LEG_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "arduino.h"
#else
	#include "WProgram.h"
#endif

class LegClass
{
 protected:


 public:
	 int8_t tOffset;
	 uint8_t t;
	 int8_t xPos;
	 int8_t yPos;
	 int8_t zPos;
	 int8_t xOffset;
	 int8_t yOffset;
	 int8_t zOffset;
	 uint8_t stepSizeX;
	 uint8_t stepSizeY;
	 uint8_t stepSizeZ;
	 uint8_t stepSizeXY;
	 uint8_t period = 100;
	 uint8_t frame = 1;
	 float rotation;
	 float xyRotation;
	 float stepSizeTurn;


	 //giat offset, rotation offset, i2c address, x offset, y offset;
	void init(int16_t giat_offset, int16_t rotation_offset, uint8_t i2c_address,int16_t x_offset,int16_t y_offset);
	void calcData();
	void calcPositionWalk(int8_t inc_x, int8_t inc_y, uint8_t mode);
	void calcPositionTurn(int8_t inc_x, int8_t inc_r, uint8_t mode);
	void calcPositionRotate(int8_t inc_r, uint8_t mode);
	void calcPose(float yaw, float  pitch, float  roll, float  a, float  b, float  c);
	void calcXY(float stepsize, float rotation, uint8_t mode);
	void sendData(int8_t *data);
	void calcZ(uint8_t mode);
	void calcPositionCenter();
};

#endif

