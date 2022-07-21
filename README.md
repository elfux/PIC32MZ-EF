# PIC32MZ-EF
## PIC32MZ2048EFM100
Hardware used: [CURIOSITY PIC32MZEF DEVELOPMENT BOARD](https://www.microchip.com/en-us/development-tool/DM320104)
User guide: [PIC32MZ EF Curiosity Development Board User’s Guide](https://ww1.microchip.com/downloads/en/DeviceDoc/70005282B.pdf)
Datasheet: [PIC32MZ Embedded Connectivity with Floating Point Unit (EF) Family](https://ww1.microchip.com/downloads/aemDocuments/documents/MCU32/ProductDocuments/DataSheets/PIC32MZ-Embedded-Connectivity-with-Floating-Point-Unit-Family-Data-Sheet-DS60001320H.pdf)

Tools Used: [MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)
Compiler: [XC32 2.15](https://www.microchip.com/en-us/tools-resources/archives/mplab-ecosystem)

In this repository you will find the projects I'm working on, just basic stuff. These are based on Harmony 3 repository, yet, they do not need it in order to work.


You will find projects of:

## UART Echo blocking
Grab a USB cable and remove the it's isolation in one end, ignore the Vcc cable, connect the ground to GND pin, the Tx on Tx pin (RD15) and Rx on Rx pin (RD10), for UART1.
[UART1 or UART2 - Echo Individualy](https://github.com/elfux/PIC32MZ-EF/tree/main/uart_echo_blocking_U1_U2_working)

## SPI Self Loop
There is a need to shunt the MISO and MOSI pins on SPI2.
[SPI2 Self Loopback](https://github.com/elfux/PIC32MZ-EF/tree/main/spi_self_loopback_blocking)

## NVM Flash Read Write
[NVM Flash Read-Write](https://github.com/elfux/PIC32MZ-EF/tree/main/flash_read_write)

## DMAC Memory Transfer
[DMAC Memory Transfer](https://github.com/elfux/PIC32MZ-EF/tree/main/dmac_memor)

## SPI + DMA + Flash 2 Click

