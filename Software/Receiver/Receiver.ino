/*
* Created: 03.08.2018 12:09:00
* Author : Alexander Miller
*
* ESP-NOW Receiver
*	<< This Device Slave >>
*
*  Flow: Master
*   Step 1 : ESPNow Init on Master and set it in STA mode
*   Step 2 : Start scanning for Slave ESP32 (we have added a prefix of `slave` to the SSID of slave for an easy setup)
*   Step 3 : Once found, add Slave as peer
*   Step 4 : Register for send callback
*   Step 5 : Start Transmitting data from Master to Slave
*
*   Flow: Slave
*   Step 1 : ESPNow Init on Slave
*   Step 2 : Update the SSID of Slave with a prefix of `slave`
*   Step 3 : Set Slave in AP mode
*   Step 4 : Register for receive callback and wait for data
*   Step 5 : Once data arrives, print it in the serial monitor
*
*   Note: Master and Slave have been defined to easily understand the setup.
*		 Based on the ESPNOW API, there is no concept of Master and Slave.
*		 Any devices can act as master or salve.
*/


#include <esp_now.h>
#include <WiFi.h>

#define CHANNEL 1

volatile uint8_t data_buf[3] = { 0,0,0 };

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
}

// callback when data is recv from Master
void OnDataRecv(const uint8_t *mac_addr, const uint8_t *data, int data_len) {

	for (uint8_t i = 0; i < 3; i++)
	{
		if (i<data_len)
		{
			data_buf[i] = data[i];
		}
	}
}

void loop() {
	Serial.print("Data: ");
	for (uint8_t i = 0; i < 3; i++)
	{
		Serial.print(*(data_buf + i));
		if (i<3 - 1)
		{
			Serial.print(", ");
		}
	}
	Serial.println("");
	delay(100);
}
