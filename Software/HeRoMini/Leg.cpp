// 
// 
// 

#include "Leg.h"
#include "wire.h"

void LegClass::init(int16_t giat_offset_, int16_t rotation_offset_, uint8_t i2c_address_, int16_t x_offset_, int16_t y_offset_)
{
	rotation = rotation_offset_ * 0.0174533;
	tOffset = giat_offset_;
	t = tOffset;
	xOffset = x_offset_;
	yOffset = y_offset_;
	i2c_address = i2c_address_;
}

void LegClass::calcPositionRotate(int8_t inc_r, uint8_t mode)
{
	t = ((t + inc_r) + period) % period;
	calcXY(stepSizeXY, rotation, mode);
}

void LegClass::calcPose(float yaw, float  pitch, float  roll, float  a, float  b, float  c)
{

	//TCP coordinate in global coordinate system ( 0/0/0 = center of body ; +x = front; +z = top ; +y = left)
	float tempX = xOffset - xPos;
	float tempY = yOffset - yPos;
	float tempZ = zOffset - zPos;
	float sA = sin(yaw);
	float sB = sin(pitch);
	float sC = sin(roll);
	float cA = cos(yaw);
	float cB = cos(pitch);
	float cC = cos(roll);

	//Roll-Pitch-Yaw-Rotation matrix
	float newX = tempX * (cA * cB) + tempY * (cA * sB * sC - sA * cC) + tempZ * (sA * sC + cA * sB * cC);
	float newY = tempX * (sA * cB) + tempY * (cA * cC + sA * sB * sC) + tempZ * (sA * sB * cC - cA * sC);
	float newZ = tempX * (-sB) + tempY * (cB * sC) + tempZ * (cB * cC);

	//Set leg position in local coordinate system
	xPos += newX - tempX + a;
	yPos += newY - tempY + b;
	zPos += newZ - tempZ + c;

}

void LegClass::sendData(int8_t *data)
{
	uint8_t a[] = { *data , *(data + 1),*(data + 2) };
	//Serial.println("SEND DATA NOT IMPLEMENTED!");
	if (i2c_address == 0x11)
	{
		Serial.print("DATA: ");
		Serial.print(*data);
		Serial.print(" | ");
		Serial.print(*(data + 1));
		Serial.print(" | ");
		Serial.println(*(data + 2));
	}
	
	Wire.beginTransmission(i2c_address);
	Wire.write(a,3);
	Wire.endTransmission();


}

void LegClass::calcData()
{
	int8_t data[3];
	//tcp position
	data[0] = xPos;
	data[1] = yPos;
	data[2] = zPos;

	//send data over i2c
	sendData(data);

}

void LegClass::calcZ(uint8_t mode)
{

	if (t <= period / 2)
	{
		zPos = 0;

	}
	else if (t <= period * 0.6)
	{
		zPos = -1 * (stepSizeZ * 100 / (period * period)) * (t - 0.6 * period) * (t - 0.6 * period) + stepSizeZ;
	}
	else if (t <= period)
	{
		zPos = -1 * (stepSizeZ * 6.25 / (period * period)) * (t - 0.6 * period) * (t - 0.6 * period) + stepSizeZ;
	}
	else
	{
		zPos = 0;
	}

	if (zPos > stepSizeZ)
	{
		zPos = stepSizeZ;
	}
	else if (zPos < -stepSizeZ)
	{
		zPos = -stepSizeZ;
	}
}

void LegClass::calcXY(float stepsize, float rotation, uint8_t mode)
{

	if (t <= period / 2)
	{
		xPos = -4 * ((stepsize * cos(rotation)) / period) * t + (stepsize * cos(rotation));
		yPos = -4 * ((stepsize * sin(rotation)) / period) * t + (stepsize * sin(rotation));
	}
	else
	{
		xPos = 4 * ((stepsize * cos(rotation)) / period) * (t - period / 2) - (stepsize * cos(rotation));
		yPos = 4 * ((stepsize * sin(rotation)) / period) * (t - period / 2) - (stepsize * sin(rotation));
	}
	calcZ(mode);



	//check boundaries
	if (xPos > stepSizeXY)
	{
		xPos = stepSizeXY;
	}
	else if (xPos < -stepSizeXY)
	{
		xPos = -stepSizeXY;
	}
	if (yPos > stepSizeXY)
	{
		yPos = stepSizeXY;
	}
	else if (yPos < -stepSizeXY)
	{
		yPos = -stepSizeXY;
	}



}

void LegClass::calcPositionCenter()
{
	t = tOffset;
	xPos = 0.0;
	yPos = 0.0;
	zPos = 0.0;
}

void LegClass::calcPositionWalk(int8_t inc_x, int8_t inc_y, uint8_t mode)
{
	t = (uint16_t)(t + sqrt(inc_x * inc_x + inc_y * inc_y)) % period;

	//if t is equal to period*0.25 or period*0.75 +- frame
	if ((t >= period * 0.75 - frame) && (t <= period * 0.75 + frame) || (t >= period * 0.25 - frame) && (t <= period * 0.25 + frame))
	{
		//calc angle based on the inputs
		xyRotation = atan2(inc_y, inc_x);
	}
	//calc tcp position
	calcXY(stepSizeXY, xyRotation, mode);


}

void LegClass::calcPositionTurn(int8_t inc_x, int8_t inc_r, uint8_t mode)
{
	inc_r = -inc_r;

	t = ((t + abs(inc_x)) + period) % period;
	if (i2c_address == 0x11)
	{
		Serial.println(t);
	}

	//if t is equal to period*0.25 or period*0.75 +- frame
	if ((t >= period * 0.75 - frame) && (t <= period * 0.75 + frame) || (t >= period * 0.25 - frame) && (t <= period * 0.25 + frame))
	{
		float rad;
		//calc the radius of the circle
		//float rad = inc_r / abs(inc_r) * ((1000 - 500 * abs(inc_r)) - abs(yOffset));
		float r = abs(inc_r) * ((1000 - 500 * abs(inc_r)) - abs(yOffset));
		if (r != 0 && inc_r != 0)
		{
			rad = inc_r / r;
			//if leg is on left side
			if (yOffset < 0)
			{
				//if center of circle is on the right side
				if (rad > yOffset)
				{
					stepSizeTurn = stepSizeXY;
				}
				//if center of circle is on the left side
				else
				{
					//adapt the stepsize based on distance to the right side
					stepSizeTurn = stepSizeXY * (abs(rad) - abs(yOffset)) / (abs(rad) + abs(yOffset));
				}
			}
			//if leg is on the right side
			if (yOffset > 0)
			{
				//if center of circle is on the left side
				if (rad < yOffset)
				{
					stepSizeTurn = stepSizeXY;
				}
				//if center of circle is on the right side
				else
				{
					//adapt the stepsize based on distance to the left side
					stepSizeTurn = stepSizeXY * (abs(rad) - abs(yOffset)) / (abs(rad) + abs(yOffset));
				}
			}

			//calc angle of the movement path
			float w = atan2(xOffset, rad);
			xyRotation = w;
		}
		else {
			stepSizeTurn = stepSizeXY;
			xyRotation = 0;
		}




		//adjust the angle of the movement path (turn it by 180°)
		if (inc_r < 0)
		{
			xyRotation -= PI;
		}
		if (inc_x < 0)
		{
			xyRotation -= PI;
		}

		//check boundaries
		if (stepSizeTurn > stepSizeXY)
		{
			stepSizeTurn = stepSizeXY;
		}
		else if (stepSizeTurn < 0)
		{
			stepSizeTurn = 0;
		}


	}
	//calc tcp position based on calculatet angle and stepsize
	calcXY(stepSizeTurn, xyRotation, mode);
}