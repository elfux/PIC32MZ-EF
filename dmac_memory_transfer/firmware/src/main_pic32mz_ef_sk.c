/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>                     // Defines strncmp
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
//#include "CarlosAddons.c"

#define TRANSFER_SIZE 1024

char __attribute__((coherent)) srcBuffer[TRANSFER_SIZE] = {};
char __attribute__((coherent)) dstBuffer1[TRANSFER_SIZE] = {};
volatile bool completeStatus = false;
volatile bool errorStatus = false;

/* Delete LED definitions on plib_gpio.h*/


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




void APP_Callback(DMAC_TRANSFER_EVENT status, uintptr_t context)
{
    if(status == DMAC_TRANSFER_EVENT_COMPLETE)
    {
        completeStatus = true;
    }
    else
    {
        errorStatus = true;
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
//    uint32_t i = 0;

    /* Initialize all modules */
    SYS_Initialize ( NULL );
    LED_Off(5);

    /* Build the srcBuffer */
    //while(i < TRANSFER_SIZE)
    //{
    //    srcBuffer[i] = (uint8_t)i;
    //    i++;
    //}
    
    strcpy(srcBuffer, "Teste DMA");
    
    
    printf("\n\r------------------------------------------------------------------------------------------------");
    printf("\n\r\t\t DMAC Memory Transfer DEMO\t\t");
    printf("\n\r------------------------------------------------------------------------------------------------\n\r");
    
    
    /* Register a callback with DMAC PLIB to get transfer complete and erro
     * events. */
    DMAC_ChannelCallbackRegister(DMAC_CHANNEL_0, APP_Callback, 0);

    /* Performing first transfer from srcBuffer to dstBuffer1 with configured
     * burst size of 1 data */
    DMAC_ChannelTransfer(DMAC_CHANNEL_0, &srcBuffer, TRANSFER_SIZE, &dstBuffer1, TRANSFER_SIZE, TRANSFER_SIZE);

    while (1)
    { 
       
        if(completeStatus == true)
        {
            completeStatus = false;

            if(strncmp(srcBuffer, dstBuffer1, TRANSFER_SIZE) == 0)
            {
                /* Successfully transferred the data using DMAC */
                printf("**** DMAC Memory Transfer Successful with Data Match ****\n\r");
                printf("srcBuffer -> %s\t\t\t", srcBuffer);
                printf("endereço -> %p\n\r", (void*) &srcBuffer);
                
                printf("dstBuffer1 -> %s\t\t", dstBuffer1);
                printf("endereço -> %p\n\r", (void*) &dstBuffer1);
                LED_On(4);
            }
            else
            {
                /* Data transfers done, but data mismatch occurred */
                printf("**** DMAC Memory Transfer Successful with Data Mismatch !!! ****\n\r");                    
                LED_On(2);
            }
        }
        else if(errorStatus == true)
        {
            /* Error occurred during the transfers */
            errorStatus = false;
            LED_On(1);
        }
        else
        {
            /* Nothing to do, loop */
            delay_ms(1000);
            LED_Off(5);
            
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

