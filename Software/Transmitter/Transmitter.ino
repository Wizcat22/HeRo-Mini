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

esp_now_peer_info_t slave;
#define CHANNEL 3
bool isPaired = false;
uint8_t data[8] = {0,0,0,0,0,0,0,0};

// Init ESP Now
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

// Scan for slaves in AP mode
void ScanForSlave() {
	int8_t scanResults = WiFi.scanNetworks();
	bool slaveFound = 0;
	memset(&slave, 0, sizeof(slave));

	Serial.println("");
	if (scanResults == 0) {
		Serial.println("No WiFi devices in AP Mode found");
	}
	else {
		Serial.print("Found "); Serial.print(scanResults); Serial.println(" devices ");
		for (int i = 0; i < scanResults; ++i) {
			String SSID = WiFi.SSID(i);
			String BSSIDstr = WiFi.BSSIDstr(i);

			delay(10);
			// Check if the current device starts with `HeRoMini`
			if (SSID.indexOf("HeRoMini") == 0) {
				// Get BSSID => Mac Address of the Slave
				int mac[6];
				if (6 == sscanf(BSSIDstr.c_str(), "%x:%x:%x:%x:%x:%x%c", &mac[0], &mac[1], &mac[2], &mac[3], &mac[4], &mac[5])) {
					for (int ii = 0; ii < 6; ++ii) {
						slave.peer_addr[ii] = (uint8_t)mac[ii];
					}
				}

				slave.channel = CHANNEL; // pick a channel
				slave.encrypt = 0; // no encryption

				slaveFound = 1;
				break;
			}
		}
	}

	if (slaveFound) {
		Serial.println("Slave Found, processing..");
	}
	else {
		Serial.println("Slave Not Found, trying again.");
	}

	// clean up ram
	WiFi.scanDelete();
}

// Check if the slave is already paired with the master.
// If not, pair the slave with master
bool manageSlave() {
	if (slave.channel == CHANNEL) {

		Serial.print("Slave Status: ");
		const esp_now_peer_info_t *peer = &slave;
		const uint8_t *peer_addr = slave.peer_addr;
		// check if the peer exists
		bool exists = esp_now_is_peer_exist(peer_addr);
		if (exists) {
			// Slave already paired.
			Serial.println("Already paired");
			return true;
		}
		else {
			// Slave not paired, attempt pair
			esp_err_t addStatus = esp_now_add_peer(peer);
			if (addStatus == ESP_OK) {
				// Pair success
				Serial.println("Pair success");
				return true;
			}
			else {
				Serial.println("Pair failed");
				return false;
			}
		}
	}
	else {
		// No slave found to process
		Serial.println("No Slave found to process");
		return false;
	}
}



// send data
void sendData(uint8_t *data, uint8_t size) {

	const uint8_t *peer_addr = slave.peer_addr;
	Serial.print("Sending: "); 
	for (uint8_t i = 0; i < size; i++)
	{
		Serial.print(*(data + i));
		if (i<size - 1)
		{
			Serial.print(", ");
		}	
	}
	Serial.println("");
	esp_err_t result = esp_now_send(peer_addr, data, size);
	Serial.print("Send Status: ");
	if (result == ESP_OK) {
		Serial.println("Success");
	}
	else {
		Serial.println("Failed");
	}
}

// callback when data is sent from Master to Slave
void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
	Serial.print("Last Packet: "); Serial.println(status == ESP_NOW_SEND_SUCCESS ? "Delivery Success" : "Delivery Fail");
}

void setup() {
	Serial.begin(115200);
	Serial.setTimeout(10000000);
	//Set device in STA mode to begin with
	WiFi.mode(WIFI_STA);
	// This is the mac address of the Master in Station Mode
	Serial.print("STA MAC: "); Serial.println(WiFi.macAddress());
	// Init ESPNow with a fallback logic
	InitESPNow();
	// Once ESPNow is successfully Init, we will register for Send CB to
	// get the status of Trasnmitted packet
	esp_now_register_send_cb(OnDataSent);
	//Scan for slave
	ScanForSlave();

	isPaired = manageSlave();
}

void loop() {
	
	// If Slave is found, it would be populate in `slave` variable
	// We will check if `slave` is defined and then we proceed further
	if (slave.channel == CHANNEL) {
		
		if (isPaired) {
			// pair success or already paired
			// Send data to device
			sscanf(Serial.readStringUntil(';').c_str(), "%d,%d,%d,%d,%d,%d,%d,%d", &data[0], &data[1], &data[2], &data[3], &data[4], &data[5], &data[6], &data[7]);
			sendData(data,8);
		}
		else {
			// slave pair failed
			isPaired = manageSlave();
		}
	}
	else {
		// No slave found to process
		ScanForSlave();
	}
}