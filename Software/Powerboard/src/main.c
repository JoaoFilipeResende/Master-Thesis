/**
  ******************************************************************************
  * @ile    main.c
  * @author  3S0 FreeRTOs
  * @version V1.0
  * @date    24/10/2017
  * @brief   FreeRTOS Example project.
  ******************************************************************************
*/

/*
 * LASMU-BATTERY
 * Joao Resende 1140569
 * Pedro Barbosa 1140467
 * 2018-2019
 */

/* Standard includes. */
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <inttypes.h>

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

/* extra includes. */
#include "USART.h"
#include "SPI.h"

/* Task priorities. */
#define mainFLASH_TASK_PRIORITY	( tskIDLE_PRIORITY + 1)
#define mainUSART_TASK_PRIORITY	( tskIDLE_PRIORITY + 1)
/***************************************/

/* Tasks delay. */
#define mainFLASH_DELAY			( ( TickType_t ) 5000 / portTICK_RATE_MS )
/***************************************/

/* Configure SETUPS */
void RCC_Config_HSI_PLL_Max( void );
static void prvSetupGPIO( void );

/***************************************/

/* Configure TASKS */
static void prvCellTask( void *pvParameters );
static void prvUSARTTask( void *pvParameters );
/***************************************/


/***************************************/

/* Tasks handle variable. */
TaskHandle_t HandleTask[3];
TaskHandle_t BlockedINFOTask;
/***************************************/

enum taskenum
{
	HandleTask1,
	HandleTask2,
	HandleTask3,
};

/***************************************/

/* Queue variable. */
QueueHandle_t xQueueUSART1_TX;
QueueHandle_t xQueueUSART1_RX;
QueueHandle_t xQueueSPI1_RX;
QueueHandle_t xQueueSPI1_TX;
/***************************************/

/* Semaphore variable. */
SemaphoreHandle_t xSemaphoreMutex_USART;
SemaphoreHandle_t xSemaphoreMutex_SPI;
SemaphoreHandle_t xSemaphoreMutex_Struct;
/***************************************/

Battery_t Battery;

/* SHUTDOWN */
#define SHUTDOWN_ON()       GPIO_ResetBits(GPIOB, GPIO_Pin_6);
#define SHUTDOWN_OFF()      GPIO_SetBits(GPIOB, GPIO_Pin_6);

int main( void )
{
	RCC_Config_HSI_PLL_Max();
	prvSetupGPIO();
	SHUTDOWN_OFF();
	prvSetupUSART(115200, 100, 1);
	prvSetupSPI();

	xSemaphoreMutex_USART = xSemaphoreCreateMutex();
	xSemaphoreMutex_Struct = xSemaphoreCreateMutex();
	/* Create the tasks */

   // xTaskCreate( prvINFOTask, 		"Clock INFO", 		configMINIMAL_STACK_SIZE+150,
   // 				NULL, mainFLASH_TASK_PRIORITY, &HandleTask[HandleTask2] );

	xTaskCreate( prvCellTask, 		"Monitoring Cells", 		configMINIMAL_STACK_SIZE+150,
	    				NULL, mainFLASH_TASK_PRIORITY+2, &HandleTask[HandleTask1] );

	xTaskCreate( prvUSARTTask, 		"Processing USART DATA", 		configMINIMAL_STACK_SIZE+150,
	      				NULL, mainFLASH_TASK_PRIORITY+1, &HandleTask[HandleTask2] );

	/* Start the scheduler. */
	vTaskStartScheduler();

	/* Will only get here if there was not enough heap space to create the idle task. */
	return 0;
}

/*-----------------------------------------------------------*/


static void prvCellTask( void *pvParameters)
{
	TickType_t xLastExecutionTime;
	xLastExecutionTime = xTaskGetTickCount();

	Battery.Battery1=0;
	Battery.Battery2=0;
	Battery.Cell[0]=0;
	Battery.Cell[1]=0;
	Battery.Cell[2]=0;
	Battery.Cell[3]=0;
	Battery.Cell[4]=0;
	Battery.Cell[5]=0;

	Battery.status[0]=0;
	Battery.status[1]=0;
	Battery.status[2]=0;
	Battery.status[3]=0;
	Battery.status[4]=0;
	Battery.ERROR_STATUS=0x00;

	write_config(); //Configuring LTC

	while(1)
	{
		vTaskDelayUntil( &xLastExecutionTime, mainFLASH_DELAY );
		start_cell_conv();
		vTaskDelay( ( ( TickType_t ) 600 / portTICK_RATE_MS ) );
		xSemaphoreTake( xSemaphoreMutex_USART, (TickType_t)portMAX_DELAY);
		read_cells(&Battery);
		xSemaphoreGive( xSemaphoreMutex_USART );

		//SHUTDOWN_ON();

		//BlockedINFOTask=xTaskGetCurrentTaskHandle();
		//vTaskSuspend(BlockedINFOTask);

	}
}
/*-----------------------------------------------------------*/

static void prvUSARTTask( void *pvParameters )
{
	//TickType_t xLastExecutionTime;
	//xLastExecutionTime = xTaskGetTickCount();

	int8_t Start = 0x10;
	int8_t pedido = 0;
	float b1, b2, bt;
	float Check_Cell[6];
	int8_t Check_Status[5]={};
	int8_t Check_Error;

	Battery.Battery1=0;
	Battery.Battery2=0;
	Battery.Cell[0]=0;
	Battery.Cell[1]=0;
	Battery.Cell[2]=0;
	Battery.Cell[3]=0;
	Battery.Cell[4]=0;
	Battery.Cell[5]=0;

	Battery.status[0]=0;
	Battery.status[1]=0;
	Battery.status[2]=0;
	Battery.status[3]=0;
	Battery.status[4]=0;
	Battery.ERROR_STATUS=0x00;

	while(1)
	{
		if( USARTGetByte()==Start) //USARTGetByte()
		{
			pedido = USARTGetByte();

			switch (pedido) //USARTGetByte()
			{
				case 0x01: //Send tension of battery's

					xSemaphoreTake( xSemaphoreMutex_Struct, (TickType_t)portMAX_DELAY);
					b1 = Battery.Battery1;
					b2 = Battery.Battery2;
					xSemaphoreGive( xSemaphoreMutex_Struct );

					bt=b1+b2;

					int8_t digit_b1 = trunc(b1);
					int8_t decimal_b1 = ( (b1*100) - digit_b1*100 );

					int8_t digit_b2 = trunc(b2);
					int8_t decimal_b2 = ( (b2*100) - digit_b2*100 );

					int8_t digit_bt = trunc(bt);
					int8_t decimal_bt = ( (bt*100) - digit_bt*100 );

					//Send Battery 1
					USARTPutByte(digit_b1); //digit of Tension
					USARTPutByte(decimal_b1); // High of decimal part
					//USARTPutByte((uint8_t) decimal_b1); //Low of decimal part

					//Send Battery 2
					USARTPutByte(digit_b2); //digit of Tension
					USARTPutByte(decimal_b2); // High of decimal part
					//USARTPutByte((uint8_t) decimal_b2); //Low of decimal part

					//Send Battery total
					USARTPutByte(digit_bt); //digit of Tension
					USARTPutByte(decimal_bt); // High of decimal part
					//USARTPutByte((uint8_t) decimal_bt); //Low of decimal part

					break;

				case 0x02: //Send tension of all Cells

					xSemaphoreTake( xSemaphoreMutex_Struct, (TickType_t)portMAX_DELAY);
					memcpy(&Check_Cell,&Battery.Cell,sizeof(Battery.Cell)); //sizeof = 5
					xSemaphoreGive( xSemaphoreMutex_Struct );

					for(int8_t i=0; i<6;i++)
					{
						uint8_t digit = trunc(Check_Cell[i]);
						uint8_t decimal = ( (Check_Cell[i]*100) - digit*100 );

						USARTPutByte(digit); //digit of Tension
						USARTPutByte(decimal); // High of decimal part
					}

					break;

				case 0x03: //Send Status of system
					xSemaphoreTake( xSemaphoreMutex_Struct, (TickType_t)portMAX_DELAY);
					memcpy(&Check_Status,&Battery.status,sizeof(Battery.status)); //sizeof = 5
					xSemaphoreGive( xSemaphoreMutex_Struct );

					for( int8_t i=0; i<6; i++)
					{
						USARTPutByte(Check_Status[i]); //Send Status of Cells 0x01 - GOOD / 0x02 - BAD / 0x03 - VERY BAD
					}

					break;

				case 0x04: //Send Errors
					xSemaphoreTake( xSemaphoreMutex_Struct, (TickType_t)portMAX_DELAY);
					Check_Error = Battery.ERROR_STATUS;
					xSemaphoreGive( xSemaphoreMutex_Struct );


					USARTPutByte(Check_Error); //Send Errors 0x00 - No Errors / 0x01 - Error Comparing PEC

					break;

				case 0x05: //Send current Configuration of LTC

					break;

				default:
						//USARTPutByte(addr);
						USARTPutByte(0xff); //erro
					break;
			}
		}

	}
}
/*-----------------------------------------------------------*/

void RCC_Config_HSI_PLL_Max( void )
{
    /* RCC configuration - 64 MHz */
    RCC_DeInit();

	/* Enable The Prefetch Buffer */
	FLASH_PrefetchBufferCmd(ENABLE);
	/* 64 MHZ - 2 wait states */
	FLASH_SetLatency(FLASH_Latency_2);

	/* No division HCLK = SYSCLK = 64 MHz*/
	RCC_HCLKConfig(RCC_SYSCLK_Div1);

	/* Use PLL with HSI = 4 MHz (4 MHz * 16 = 64 MHz) */
	RCC_PLLConfig(RCC_PLLSource_HSI_Div2, RCC_PLLMul_16);
	/* Enable the PLL */
	RCC_PLLCmd(ENABLE);
	/* Wait for PLL ready */
	while (RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET );

	/* Select the PLL as system clock source */
	RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);
	/* Wait until PLL is used as system clock */
	while( RCC_GetSYSCLKSource() != 0x08 );
}
/*-----------------------------------------------------------*/

static void prvSetupGPIO( void )
{
    /* GPIO configuration - GREEN LED*/
    GPIO_InitTypeDef GPIO_InitStructure;

    /* Enable GPIOB clock */
    RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOB , ENABLE );

    GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_3;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStructure.GPIO_OType= GPIO_OType_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

    GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_6;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType= GPIO_OType_OD;
	GPIO_InitStructure.GPIO_OType= GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

    GPIO_Init(GPIOB, &GPIO_InitStructure);
}
/*-----------------------------------------------------------*/

