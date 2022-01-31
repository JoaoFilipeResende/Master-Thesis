/*
 * USART.h
 *
 *  Created on: Jan 12, 2019
 *      Author: jfato
 */

#ifndef USART_H_
#define USART_H_


#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include "main.h"

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

void prvSetupUSART (uint32_t baudrate, uint16_t buffer_depth, uint16_t RX);

int8_t USARTGetByte(void);
void USARTPutByte(int8_t put_byte);
int8_t USARTGetChar(void);
void USARTPutChar(char put_char);
void USARTPutString(char *put_string, uint8_t string_length);
void USARTClose(void);

#endif /* USART_H_ */
