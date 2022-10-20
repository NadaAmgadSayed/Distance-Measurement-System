/******************************************************************************
 *
 * File Name: distance_measurement_system.c
 *
 * Description: System to measure the distance using ultrasonic sensor HC-SR04
 *
 * Author: Nada Amged
 *
 *******************************************************************************/
#include "lcd.h"
#include "hcsr04_ultrasonic_sensor.h"
#include <avr/io.h>


int main(void){
	uint16 distance;

	SREG |= (1<<7);

	LCD_init();
	Ultrasonic_init();

	LCD_displayString("Distance =    cm");


	while(1){
		LCD_moveCursor(0, 11);
		distance = Ultrasonic_readDistance();

		if(distance >= 100){
			LCD_intgerToString(distance);

		}
		else{
			LCD_intgerToString(distance);
			LCD_displayCharacter(' ');
		}
	}

	return 0;
}
