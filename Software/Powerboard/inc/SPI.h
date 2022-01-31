/*
 * SPI.h
 *
 *  Created on: Jan 12, 2019
 *      Author: jfato
 */

#ifndef SPI_H_
#define SPI_H_


#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include "main.h"

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

typedef struct Battery
{
	float Battery1;
	float Battery2;
	float Cell[6];
	int8_t status[5];
	int8_t ERROR_STATUS;

} Battery_t;

/* CS SPI */
#define CS_Low()       GPIO_ResetBits(GPIOA, GPIO_Pin_11);
#define CS_High()      GPIO_SetBits(GPIOA, GPIO_Pin_11);

void prvSetupSPI( void );

uint8_t SPIPutGetByte(uint8_t TxData);
void SPIClose(void);
void write_config ();
void read_config ();
void start_cell_conv ();
int8_t read_cells(Battery_t *Battery);
uint8_t computePEC(uint8_t byte, uint8_t pec);

#endif /* SPI_H_ */




