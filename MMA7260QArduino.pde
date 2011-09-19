/* Created By Christopher Kuhn 

    ECE 387: Embbeded Systems
    Miami University
    9/14/2011
                                
	DISCLAIMER OF WARRANTY

	This source code is provided "as is" and without warranties as to
	performance or merchantability. The author and/or distributors 
	of this source code may have made statements about this source 
	code. Any such statements do not constitute warranties and shall
	not be relied on by the user in deciding whether to use this 
	source code.

	This source code is provided without any express or implied 
	warranties whatsoever. Because of the diversity of conditions 
	and hardware under which this source code may be used, no warranty
	of fitness for a particular purpose is offered. The user is advised
	to test the source code thoroughly before relying on it. The user
	must assume the entire risk of using the source code.*/

	/* Input / Output Pins Accelerometer */
	const int xInputPin = A0; // - X
	const int yInputPin = A1; // - Y
	const int zInputPin = A2; // - Z
	const int sleepModePin = 12;

	int incomingX = 0;
	int incomingY = 0;
	int incomingZ = 0;

	/* init, Pin Setup */
	void setup()
	{
		Serial.begin(9600);
		digitalWrite(sleepModePin, LOW);
	}
	void loop()
	{
		Serial.print("X: ");
		incomingX = analogRead(xInputPin);
		Serial.print(incomingX);
	 
		Serial.print(" Y: "); 
		incomingY = analogRead(yInputPin);
		Serial.print(incomingY);
	  
	   Serial.print(" Z: ");
		incomingZ = analogRead(zInputPin);
		Serial.println(incomingZ);
	}
