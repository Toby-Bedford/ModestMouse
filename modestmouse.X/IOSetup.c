#include "p30F4011.h"
#include "IOSetup.h"

void GPIOSetup(){
    S3TRIS = 1;
    S3PORT = 0;
    LED2TRIS = 0;
    LED2PORT = 0;
    LED3TRIS = 0;
    LED3PORT = 0;
    LED4TRIS = 0;
    LED4PORT = 0;
    
    // MOTOR pins
    PIN37TRIS = 0;
    PIN36TRIS = 0;
    
    // Ultrasonic pins
    TRIG_tris = 0;  // trigger output
    ECHO_tris = 1;  // echo input
}
