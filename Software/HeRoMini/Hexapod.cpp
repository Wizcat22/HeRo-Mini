// 
// 
// 

#include "Hexapod.h"
#include "wire.h"

void HexapodClass::init()
{
	/* Leg positions
	*     ___
	* 0 -|   |- 1
	* 2 -|   |- 3
	* 4 -|___|- 5
	*/

	//giat offset, rotation offset, i2c address, x offset, y offset;

	//left
	legs[0].init(2500, 135, 8, 150, 175);
	legs[2].init(7500, 180, 9, 0, 175);
	legs[4].init(2500, 225, 10, -150, 175);

	//right
	legs[1].init(7500, 45, 12, 150, -175);
	legs[3].init(2500, 0, 13, 0, -175);
	legs[5].init(7500, 315, 14, -150, -175);

	Wire.begin(23, 22, 400000);
}

void HexapodClass::walk(int8_t inc_x, int8_t inc_y, uint8_t mode)
{

	//If the direction has changed, center all legs
	if (lastDirection != HexapodClass::Directions::XY)
	{
		centerLegs();
	}

	//calculate the tcp coordinate for each leg
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcPositionWalk(inc_x, inc_y, mode);
	}


	//send the tcp coordinates to each leg
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcData();
	}
	
	lastDirection = HexapodClass::Directions::XY;

}

void HexapodClass::turn(int8_t inc_x, int8_t inc_r, uint8_t mode)
{
	//If the direction has changed, center all legs
	if (lastDirection != HexapodClass::Directions::TURN)
	{
		centerLegs();
	}



	//calculate the tcp coordinate for each leg and adapt the pose
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcPositionTurn(inc_x, inc_r, mode);
	}

	//send the tcp coordinates to each leg
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcData();
	}

	lastDirection = HexapodClass::Directions::TURN;

}

void HexapodClass::rotate(int8_t inc_r, uint8_t mode)
{
	//If the direction has changed, center all legs
	if (lastDirection != HexapodClass::Directions::ROTATE)
	{
		centerLegs();
	}

	//calculate the tcp coordinate for each leg and adapt the pose
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcPositionRotate(inc_r, mode);
	}

	//send the tcp coordinates to each leg
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcData();
	}
	lastDirection = HexapodClass::Directions::ROTATE;
}

void HexapodClass::dance(int8_t inc)
{

	float yaw = 0.0;
	float pitch = 0.0;
	float roll = 0.0;
	float a = 0.0;
	float b = 0.0;
	float c = 0.0;


	//If the direction has changed, center all legs
	if (lastDirection != HexapodClass::Directions::DANCE)
	{
		centerLegs();
		lastDirection = HexapodClass::Directions::DANCE;
		move = 0;
		t = 0;

	}

	t += abs(inc);

	switch (move)
	{
	case 0:
		//DANCE!
		roll = 0.174533 * sin(t);
		break;
	case 1:
		//DANCE!
		pitch = 0.174533 * sin(t);
		break;
	case 2:
		//DANCE!
		yaw = 0.174533 * sin(t);
		break;
	case 3:
		//DANCE!
		roll = 0.174533 * sin(t);
		pitch = 0.174533 * sin(t);
		break;
	case 4:
		//DANCE!
		roll = 0.174533 * sin(t);
		yaw = 0.174533 * sin(t);
		break;
	case 5:
		//DANCE!
		yaw = 0.174533 * sin(t);
		pitch = 0.174533 * sin(t);
		break;
	case 6:
		//DANCE!
		a = 30 * sin(t);
		break;
	case 7:
		//DANCE!
		b = 30 * sin(t);
		break;
	case 8:
		//DANCE!
		c = 30 * sin(t);
		break;
	case 9:
		//DANCE!
		roll = 0.174533 * sin(t);
		b = 30 * sin(t);
		c = 30 * sin(t);
		break;
	default:
		move = 0;
		break;
	}

	if (t > (2 * (float)PI))
	{
		t = 0.0;
		move++;
	}

	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcPositionCenter();
		legs[i].calcPose(yaw, pitch, roll, a, b, c);

	}

	//send tcp positions
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcData();
	}

}

void HexapodClass::pose(float yaw, float pitch, float roll, float a, float b, float c, uint8_t mode)
{
	//If the direction has changed, center all legs
	if (lastDirection != HexapodClass::Directions::POSE)
	{
		centerLegs();
	}

	//change pose
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcPositionCenter();
		legs[i].calcPose(yaw, pitch, roll, a, b, c);

	}

	//send tcp positions
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].calcData();
	}
	
	lastDirection = HexapodClass::Directions::POSE;

}

void HexapodClass::centerLegs()
{
	//time between steps
	uint16_t time = 100;

	//put all legs down
	for (uint8_t i = 0; i < 6; i++)
	{
		legs[i].zPos = 0;
		legs[i].calcData();

	}
	delay(time);


	legs[1].calcData();
	legs[2].calcData();
	legs[5].calcData();
	delay(time);

	legs[1].zPos = (int)legs[1].stepSizeZ;
	legs[1].calcData();
	legs[2].zPos = (int)legs[2].stepSizeZ;
	legs[2].calcData();
	legs[5].zPos = (int)legs[5].stepSizeZ;
	legs[5].calcData();
	delay(time);

	legs[1].calcPositionCenter();
	legs[1].zPos = (int)legs[1].stepSizeZ;
	legs[1].calcData();
	legs[2].calcPositionCenter();
	legs[2].zPos = (int)legs[2].stepSizeZ;
	legs[2].calcData();
	legs[5].calcPositionCenter();
	legs[5].zPos = (int)legs[5].stepSizeZ;
	legs[5].calcData();
	delay(time);

	legs[1].calcPositionCenter();
	legs[1].calcData();
	legs[2].calcPositionCenter();
	legs[2].calcData();
	legs[5].calcPositionCenter();
	legs[5].calcData();
	delay(time);

	//

	legs[0].calcData();
	legs[3].calcData();
	legs[4].calcData();
	delay(time);

	legs[0].zPos = (int)legs[0].stepSizeZ;
	legs[0].calcData();
	legs[3].zPos = (int)legs[3].stepSizeZ;
	legs[3].calcData();
	legs[4].zPos = (int)legs[4].stepSizeZ;
	legs[4].calcData();
	delay(time);

	legs[0].calcPositionCenter();
	legs[0].zPos = (int)legs[0].stepSizeZ;
	legs[0].calcData();
	legs[3].calcPositionCenter();
	legs[3].zPos = (int)legs[3].stepSizeZ;
	legs[3].calcData();
	legs[4].calcPositionCenter();
	legs[4].zPos = (int)legs[4].stepSizeZ;
	legs[4].calcData();
	delay(time);

	legs[0].calcPositionCenter();
	legs[0].calcData();
	legs[3].calcPositionCenter();
	legs[3].calcData();
	legs[4].calcPositionCenter();
	legs[4].calcData();
	delay(time);

}


