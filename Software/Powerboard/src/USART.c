/*
 * USART.c
 *
 *  Created on: Jan 12, 2019
 *      Author: jfato
 */

#include "USART.h"


extern QueueHandle_t xQueueUSART1_RX;
extern QueueHandle_t xQueueUSART1_TX;
extern SemaphoreHandle_t xSemaphoreMutex_USART;

void prvSetupUSART (uint32_t baudrate, uint16_t buffer_depth, uint16_t RX)
{
	USART_DeInit(USART1);

	xQueueUSART1_RX = xQueueCreate( buffer_depth, sizeof( int8_t ) );
	xQueueUSART1_TX = xQueueCreate( buffer_depth, sizeof( char ) );	// Queue for USAR using char

	USART_InitTypeDef USART_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;

	/* USART1 is configured as follow:
		- BaudRate = 19200 baud
		- Word Length = 8 Bits
		- 1 Stop Bit
		- No parity
		- Hardware flow control disabled (RTS and CTS signals)
		- Receive and transmit enabled */

	/* Enable GPIOA clock */
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA , ENABLE );

	/* USART Periph clock enable */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1 , ENABLE);

	GPIO_PinAFConfig(GPIOA, GPIO_PinSource9, GPIO_AF_7);
	GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_9; //TX
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_Level_3;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	GPIO_PinAFConfig(GPIOA, GPIO_PinSource10, GPIO_AF_7);
	GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_10; //RX
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_Level_3;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	USART_InitStructure.USART_BaudRate = baudrate;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Tx | USART_Mode_Rx;

	/* Configure the USART1 */
	USART_Init(USART1, &USART_InitStructure);

	/*Ativa a Interrupcao*/
	USART_ITConfig(USART1, USART_IT_RXNE, RX);

	/* Enable the USART1 */
	USART_Cmd(USART1, ENABLE);

	/*Configura o Priority Group com 1 bit*/
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1);

	/*Configura Prioridade*/
	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

	NVIC_Init(&NVIC_InitStructure);
 }
/*-----------------------------------------------------------*/

/***************************************/
/* USART */

int8_t USARTGetByte(void)
{
	int8_t RxData;
	if( xQueueUSART1_RX != 0 )
	{
		xQueueReceive( xQueueUSART1_RX, &RxData, ( TickType_t ) portMAX_DELAY );
		return RxData;
	}
	return 0;
}
/*-----------------------------------------------------------*/

void USARTPutByte(int8_t put_byte)
{
	if( xQueueUSART1_TX != 0 )
	{
		xQueueSendToBack( xQueueUSART1_TX, &put_byte, ( TickType_t ) portMAX_DELAY );
		USART_ITConfig(USART1, USART_IT_TXE, ENABLE);
	}
}

/*-----------------------------------------------------------*/

int8_t USARTGetChar(void)
{
	int8_t RxData;
	if( xQueueUSART1_RX != 0 )
	{
		xQueueReceive( xQueueUSART1_RX, &RxData, ( TickType_t ) portMAX_DELAY );
		return RxData;
	}
	return 0;
}
/*-----------------------------------------------------------*/

void USARTPutChar(char put_char)
{
	if(put_char != 0)
	{
		if( xQueueUSART1_TX != 0 )
		{
			xQueueSendToBack( xQueueUSART1_TX, &put_char, ( TickType_t ) portMAX_DELAY );
			USART_ITConfig(USART1, USART_IT_TXE, ENABLE);
		}
	}
}
/*-----------------------------------------------------------*/

void USARTPutString(char *put_string, uint8_t string_length)
{
	uint16_t cont_aux=0;

	xSemaphoreTake( xSemaphoreMutex_USART, (TickType_t)portMAX_DELAY);

    while(cont_aux != string_length) /*or strlen(message)*/
    {
    	USARTPutChar(put_string[cont_aux]);
        cont_aux++;
    }

    xSemaphoreGive( xSemaphoreMutex_USART );
}
/*-----------------------------------------------------------*/

void USARTClose(void)
{
	USART_DeInit(USART1);
	USART_ITConfig(USART1, USART_IT_TXE, DISABLE);
	USART_ITConfig(USART1, USART_IT_RXNE, DISABLE);
	vQueueDelete(xQueueUSART1_RX);
	vQueueDelete(xQueueUSART1_TX);
}
/*-----------------------------------------------------------*/

