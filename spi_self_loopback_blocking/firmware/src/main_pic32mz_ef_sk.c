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


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <string.h>

#define RX_BUFFER_SIZE 255

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

// Declarations for SPI
uint8_t txData[]  = "SELF LOOPBACK DEMO FOR SPI!";
uint8_t rxData[sizeof(txData)];

// Declarations for UART
char messageStart[] = "**** Welcome! ****\r\n**** You can now insert your message and it will echo back! ****";
char newline[] = "\r\n";
char errorMessage[] = "\r\n**** UART error has occurred ****\r\n";
char receiveBuffer[RX_BUFFER_SIZE] = {};
char data = 0;
uint8_t rxCounter=0;


// Beggining of the program
int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /* UART Welcome Message */
    UART1_Write(&messageStart, sizeof(messageStart)-1);
    UART1_Write(newline, sizeof(newline)-1);
    
    
    while ( true )
    {
        SPI2_WriteRead(&txData, sizeof(txData), &rxData, sizeof(rxData));

        /* Compare received data with the transmitted data */
        if ((memcmp(txData, rxData, sizeof(txData)) == 0))
        {
            /* Pass: Received data is same as transmitted data */
            led_4g ^= 1;
        }
        else
        {
            /* Fail: Received data is not same as transmitted data */
            led_4r ^= 1;
        }
        delay_ms(500);
        led_4g = 1;
        led_4r = 1;
        delay_ms(500);
        
        /* UART Echo APP*/
        if(UART1_ReceiverIsReady() == true)
        {
                if(UART1_ErrorGet() == UART_ERROR_NONE)
                {
                    UART1_Read(&data, 1);

                    if((data == '\n') || (data == '\r'))
                    {     
                        UART1_Write(receiveBuffer,5);
                        UART1_Write(newline, sizeof(newline)-2);
                        data = '\0';
                        rxCounter = 0;
                    }
                    else
                    { 
                        receiveBuffer[rxCounter++] = data;
                    }
                }
                else
                {
                    UART1_Write(errorMessage,sizeof(errorMessage));
                }
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

