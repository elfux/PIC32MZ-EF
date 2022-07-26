-------------------------------------------------------------------------------------------------------------------
 ----- PIC32MZ-EF  ----- 
-------------------------------------------------------------------------------------------------------------------

## PIC32MZ2048EFM100
### Hardware

[CURIOSITY PIC32MZEF DEVELOPMENT BOARD](https://www.microchip.com/en-us/development-tool/DM320104)

[Flash 2 Click - SSTVSST26VF064B](https://www.mikroe.com/flash-2-click)


### Documents

[PIC32MZ EF Curiosity Development Board User’s Guide](https://ww1.microchip.com/downloads/en/DeviceDoc/70005282B.pdf)

[PIC32MZ Embedded Connectivity with Floating Point Unit (EF) Family](https://ww1.microchip.com/downloads/aemDocuments/documents/MCU32/ProductDocuments/DataSheets/PIC32MZ-Embedded-Connectivity-with-Floating-Point-Unit-Family-Data-Sheet-DS60001320H.pdf)

[Flash 2 Click - Datasheet](https://download.mikroe.com/documents/datasheets/20005119G.pdf)


### Software

[MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)

[XC32 2.15](https://www.microchip.com/en-us/tools-resources/archives/mplab-ecosystem)



In this repository you will find the projects I'm working on, just basic stuff. These are based on Harmony 3 repository, yet, they do not need it in order to work.


-------------------------------------------------------------------------------------------------------------------
 ----- Projects  ----- 
-------------------------------------------------------------------------------------------------------------------


### UART Echo blocking
[UART1 or UART2 - Echo Individualy](https://github.com/elfux/PIC32MZ-EF/tree/main/uart_echo_blocking_U1_U2_working) - Grab a USB cable and remove the it's isolation in one end, ignore the Vcc cable, connect the ground to GND pin, the Tx on Tx pin (RD15) and Rx on Rx pin (RD10), for UART1. 

### SPI Self Loop
[SPI2 Self Loopback](https://github.com/elfux/PIC32MZ-EF/tree/main/spi_self_loopback_blocking) - There is a need to shunt the MISO and MOSI pins on SPI2.

### NVM Flash Read Write
[NVM Flash Read-Write](https://github.com/elfux/PIC32MZ-EF/tree/main/flash_read_write)

### DMAC Memory Transfer
[DMAC Memory Transfer](https://github.com/elfux/PIC32MZ-EF/tree/main/dmac_memor)

### SPI2 + Flash 2 Click
[SPI2 with SSTVSST26VF064B](https://github.com/elfux/PIC32MZ-EF/tree/main/spi_sst26_rw_test)

