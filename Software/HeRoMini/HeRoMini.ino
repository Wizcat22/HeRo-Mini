/*
	Name:       HeRoMini.ino
	Created:	05/08/2018 14:42:28
	Author:     XXAM22XX-PC\Alexander Miller
*/


#include "Leg.h"
#include "Hexapod.h"
#include "Gamepad.h"
#include <esp_now.h>
#include <WiFi.h>

#define CHANNEL 1
#define DATA_BUF_SIZE 8
#define MAX_A 10
#define MAX_B 10

uint8_t data_buf0[DATA_BUF_SIZE];
uint8_t data_buf1[DATA_BUF_SIZE];
volatile uint8_t selected_buf = 0;
GamepadClass gamepad;
HexapodClass hexapod;
uint8_t move = 100;

// Init ESP Now with fallback
void InitESPNow() {
	WiFi.disconnect();
	if (esp_now_init() == ESP_OK) {
		Serial.println("ESPNow Init Success");
	}
	else {
		Serial.println("ESPNow Init Failed");
		ESP.restart();
	}
}

// config AP SSID
void configDeviceAP() {
	char* SSID = "HeRoMini_1";
	bool result = WiFi.softAP(SSID, "HeRoMini_1_Password", CHANNEL, 0);
	if (!result) {
		Serial.println("AP Config failed.");
	}
	else {
		Serial.println("AP Config Success. Broadcasting with AP: " + String(SSID));
	}
}

void setup() {
	Serial.begin(115200);
	Serial.println("ESPNow/Basic/Slave Example");
	//Set device in AP mode to begin with
	WiFi.mode(WIFI_AP);
	// configure device AP mode
	configDeviceAP();
	// Init ESPNow with a fallback logic
	InitESPNow();
	// Once ESPNow is successfully Init, we will register for recv CB to
	// get recv packer info.
	esp_now_register_recv_cb(OnDataRecv);

	//init Hexapod
	hexapod.init();
}

// callback when data is recv from Master
void OnDataRecv(const uint8_t *mac_addr, const uint8_t *data, int data_len) {

	for (uint8_t i = 0; i < DATA_BUF_SIZE; i++)
	{
		if (i < data_len)
		{
			//Write new Data in not selected buffer
			if (selected_buf == 0)
			{
				data_buf1[i] = data[i];
			}
			else if (selected_buf == 1)
			{
				data_buf0[i] = data[i];
			}
		}
	}
}


void loop() {
	//Read data from different buffer
	selected_buf ^= 1;
	if (selected_buf == 0)
	{
		gamepad.update(data_buf0, DATA_BUF_SIZE);
	}
	else if (selected_buf == 1)
	{
		gamepad.update(data_buf1, DATA_BUF_SIZE);
	}


	if (gamepad.a && gamepad.b && gamepad.x && gamepad.y && gamepad.left_stick_btn)
	{
		/*shutdown();*/
	}

	if (gamepad.up)
	{
		Serial.println("Walk selected");
		/*move = HexapodClass::Directions::XY;*/ //TODO: TEST
	}
	else if (gamepad.left)
	{
		Serial.println("Rotate selected");
		/*move = HexapodClass::Directions::ROTATE;*/ //TODO: TEST
	}
	else if (gamepad.down)
	{
		Serial.println("Turn selected");
		/*move = HexapodClass::Directions::TURN;*/ //TODO: TEST
	}
	else if (gamepad.right)
	{
		Serial.println("Pose selected");
		/*move = HexapodClass::Directions::POSE;*/ //TODO: TEST
	}
	else if (gamepad.start)
	{
		Serial.println("Dance selected");
		/*move = HexapodClass::Directions::DANCE;*/ //TODO: TEST
	}

	switch (move)
	{
	case HexapodClass::Directions::XY : walk(HexapodClass::Modes::NORMAL);
		break;
	case HexapodClass::Directions::ROTATE: rotate(HexapodClass::Modes::NORMAL);
		break;
	case HexapodClass::Directions::TURN: turn(HexapodClass::Modes::NORMAL);
		break;
	case HexapodClass::Directions::POSE: pose(HexapodClass::Modes::NORMAL);
		break;
	case HexapodClass::Directions::DANCE: dance();
		break;
	default:
		break;
	}

}

void shutdown() {
	Serial.print("SHUTDOWN: ");
	Serial.println("NOT IMPLEMENTED!");
}

void walk(uint8_t mode) {
	hexapod.walk(gamepad.left_stick_x, gamepad.left_stick_y, mode);
}

void turn(uint8_t mode) {
	hexapod.turn(gamepad.left_stick_y, gamepad.right_stick_y,mode);
}

void rotate(uint8_t mode) {
	hexapod.rotate(gamepad.left_stick_x,mode);
}

void pose(uint8_t mode) {

	//1° = 0,0174533 rad
	float degX = 0.174533 * gamepad.left_stick_x;
	float degY = 0.174533 * gamepad.left_stick_y;
	float degZ = 0.174533 * (gamepad.right_trigger - gamepad.left_trigger);
	float distA = 30 * gamepad.left_stick_y;
	float distB = 30 * gamepad.left_stick_x;
	float distC = 0;
	//Set rotation around xyz axis and translation in ab-axis
	hexapod.pose(degZ, degY, degX, distA, distB, distC, mode);
}

void dance() {
	hexapod.dance(gamepad.left_stick_x);
}


