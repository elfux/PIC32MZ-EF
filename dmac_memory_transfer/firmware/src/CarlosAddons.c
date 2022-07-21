/* 
 * File:   CarlosAddons.c
 * Author: Carlos Estevao
 *
 * Created on July 20, 2022, 10:32 AM
 */

#include "definitions.h"
#include "device.h"


/* Delete LED definitions on plib_gpio.h*/
#define led_1 LATEbits.LATE3
#define led_2 LATEbits.LATE4
#define led_3 LATEbits.LATE6
#define led_4b LATBbits.LATB0
#define led_4g LATBbits.LATB1
#define led_4r LATBbits.LATB5

void LED_On(int led){

    switch(led){
        case 1:
            led_1 = 1;
            break;
        case 2:
            led_2 = 1;
            break;
        case 3:
            led_3 = 1;
            break;
        case 4:
            led_4g = 0;
            led_4b = 0;
            led_4r = 0;
            break;
        case 5:
            led_1 = 1;
            led_2 = 1;
            led_3 = 1;
            led_4g = 0;
            led_4b = 0;
            led_4r = 0;
            break;
        default:
            break;    
    }
}


void LED_Off(int led){
    
    switch(led){
        case 1:
            led_1 = 0;
            break;
        case 2:
            led_2 = 0;
            break;
        case 3:
            led_3 = 0;
            break;
        case 4:
            led_4g = 1;
            led_4b = 1;
            led_4r = 1;
            break;
        case 5:
            led_1 = 0;
            led_2 = 0;
            led_3 = 0;
            led_4g = 1;
            led_4b = 1;
            led_4r = 1;
            break;
        default:
            break;    
    }

}

void delay_us(unsigned int us)
{
    // Convert microseconds us into how many clock ticks it will take
	us *= CPU_CLOCK_FREQUENCY / 1000000 / 2; // Core Timer updates every 2 ticks
       
    _CP0_SET_COUNT(0); // Set Core Timer count to 0
    
    while (us > _CP0_GET_COUNT()); // Wait until Core Timer count reaches the number we calculated earlier
}

void delay_ms(int ms)
{
    delay_us(ms * 1000);
}
/*
// PORTB Initialization - Insert on plib_gpio.c    

ANSELB = 0x00000000;     // Disable analog functions
TRISB = 0x0000;          // Set all port B bits as outputs

ANSELE = 0x00000000;     // Disable analog functions
TRISE = 0x0000;          // Set all port E bits as outputs

 * Add to definitions.h
void LED_On(int led);
void LED_Off(int led);
void delay_us(unsigned int us);
void delay_ms(int ms);
*/


