---
parent: Harmony 3 peripheral library application examples for PIC32MZ EF family
title: SPI blocking 
has_children: false
has_toc: false
---

[![MCHP](https://www.microchip.com/ResourcePackages/Microchip/assets/dist/images/logo.png)](https://www.microchip.com)

# SPI blocking

This example application demonstrates how to use the SPI peripheral to transmit and receive a block of data in a blocking manner.
It was used the SPI2 and you need to shunt the MISO and MOSI pins. Which are the RG0 and RG7.

## Description

This example demonstrates the transmit and receive operation over SPI interface in a blocking manner. The example application transmits known values from an array and verifies the data received through the loop back by comparing the transmitted data and the received data. The example application performs the loop back test only once after a power on reset. After the loop back is complete, the status of the loop back is indicated and the application remains idle. The loop back test requires the MOSI output pin to be connected to the MISO input pin so that anything transmitted will also be received.

## Downloading and building the application

To clone or download this application from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/csp_apps_pic32mz_ef) and then click **Clone** button to clone this repository or download as zip file.
This content can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).

Path of the application within the repository is **apps/spi/spi_self_loopback_blocking/firmware** .

To build the application, refer to the following table and open the project using its IDE.

| Project Name      | Description                                    |
| ----------------- | ---------------------------------------------- |
| pic32mz_ef_sk.X | MPLABX project for [PIC32MZ Embedded Connectivity with FPU (EF) Starter Kit](https://www.microchip.com/DevelopmentTools/ProductDetails/dm320007) |
|||

## Setting up the hardware

The following table shows the target hardware for the application projects.

| Project Name| Board|
|:---------|:---------:|
| pic32mz_ef_sk.X | [PIC32MZ Embedded Connectivity with FPU (EF) Starter Kit](https://www.microchip.com/DevelopmentTools/ProductDetails/dm320007) |
|||

### Setting up [PIC32MZ Embedded Connectivity with FPU (EF) Starter Kit](https://www.microchip.com/DevelopmentTools/ProductDetails/dm320007)

- Use a jumper wire to short pin 7 and pin 37 of the J12 connector
- Connect the Debug USB port on the board to the computer using a mini USB cable

## Running the Application

- Build and program the application using its IDE
- LED indicates the success or failure:
  - LED is turned ON when the when the value received matched with the transmitted value
  - LED is turned OFF when the when the value received did not match with the transmitted value

Following table provides LED names:

| Board | LED name |
| ----- | -------- |
| [PIC32MZ Embedded Connectivity with FPU (EF) Starter Kit](https://www.microchip.com/DevelopmentTools/ProductDetails/dm320007) | LED1|
|||
