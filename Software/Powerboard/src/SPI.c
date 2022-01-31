/*
 * SPI.c
 *
 *  Created on: Jan 12, 2019
 *      Author: jfato
 */
/*
 * USART.c
 *
 *  Created on: Jan 12, 2019
 *      Author: jfato
 */

#include "SPI.h"
extern QueueHandle_t xQueueSPI1_RX;
extern QueueHandle_t xQueueSPI1_TX;

void prvSetupSPI( void )
{
	xQueueSPI1_RX = xQueueCreate( 1, sizeof(uint8_t) );
	xQueueSPI1_TX = xQueueCreate( 1, sizeof(uint8_t) );

	RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOA , ENABLE );
	RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOB , ENABLE );
	RCC_APB2PeriphClockCmd( RCC_APB2Periph_SPI1 , ENABLE );

	/* Connect MOSI & MISO & SCK pin to AF5 */
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource3, GPIO_AF_5);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource4, GPIO_AF_5);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource5, GPIO_AF_5);

	/* MOSI & MISO */
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_4 | GPIO_Pin_5;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	/* SCK */
	GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_3;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	/* CS */
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11 ;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	SPI_InitTypeDef SPI_InitStructure;
	SPI_InitStructure.SPI_Direction=SPI_Direction_2Lines_FullDuplex;
	SPI_InitStructure.SPI_Mode=SPI_Mode_Master;
	SPI_InitStructure.SPI_DataSize=SPI_DataSize_8b;
	SPI_InitStructure.SPI_CPOL=SPI_CPOL_High;
	SPI_InitStructure.SPI_CPHA=SPI_CPHA_2Edge;
	SPI_InitStructure.SPI_NSS=SPI_NSS_Soft;
	SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_128; // 0.5MHz
	SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;

	SPI_Init(SPI1, &SPI_InitStructure);

	SPI_I2S_ITConfig(SPI1, SPI_I2S_IT_RXNE, ENABLE);
	SPI_RxFIFOThresholdConfig(SPI1,SPI_RxFIFOThreshold_QF);

	NVIC_InitTypeDef NVIC_InitStructure;
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1);
	NVIC_InitStructure.NVIC_IRQChannel = SPI1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;

	NVIC_Init(&NVIC_InitStructure);

	SPI_Cmd(SPI1, ENABLE);
}


uint8_t SPIPutGetByte(uint8_t TxData)
{
	if( xQueueSPI1_TX != 0 )
	{
		xQueueSendToBack( xQueueSPI1_TX, &TxData, ( TickType_t ) 100 );
		SPI_I2S_ITConfig(SPI1, SPI_I2S_IT_TXE, ENABLE);
	}

	if( xQueueSPI1_RX != 0 )
	{
		uint8_t RxData;
		xQueueReceive( xQueueSPI1_RX, &RxData, ( TickType_t ) 100 );
		return RxData;
	}
	return 0;
}


void SPIClose(void)
{
	SPI_I2S_DeInit(SPI1);
	SPI_I2S_ITConfig(SPI1, SPI_I2S_IT_TXE, DISABLE);
	SPI_I2S_ITConfig(SPI1, SPI_I2S_IT_RXNE, DISABLE);
	vQueueDelete(xQueueSPI1_RX);
	vQueueDelete(xQueueSPI1_TX);
}

void start_cell_conv ()
{
	uint8_t PEC;
	uint8_t byte;

	CS_Low();

	byte=0x80;//Address
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC);

	byte=0x10; //PLINT
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC);

	CS_High();
}

int8_t read_cells(Battery_t *Battery)
{

	char rx_buffer[18];
	char PEC;
	char byte;

	CS_Low(); //Pull CSBI low

	byte=0x80; //Send Address and PEC byte for bottom device
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC);

	byte=0x04; //Send RDCV command and its PEC byte
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC); //PEC

	for(int i=0; i<18; i++)//Read CVR00 byte of bottom device, then CVR01 (B), CVR02 (B), … CVR17 (B), and then PEC (B)
	{
		rx_buffer[i]= SPIPutGetByte(0x00); //CVRxx [0-17]
		PEC = computePEC(rx_buffer[i],PEC);

		/*sprintf(buffer,"Read bytes %i 0x%x\r\n" , i , buffer[i]);
	    USARTPutString(buffer,strlen(buffer));*/
	}

	char PEC_received=SPIPutGetByte(0x00);

	//Check PEC received from CVR00 to CVR17

	//if( PEC != PEC_received)
	//{
		//Battery->ERROR_STATUS=0x01;
		//return 0;
	//}

	CS_High(); //Pull CSBI high

	//CALCULATE VOLTAGE
	uint8_t reg = 0;
	uint16_t low, high;
	uint16_t cellADC12bits[9];

	for (int k = 0; k<12; k+=2) //from CVR00 until CVR11 (8cells)
	{
		low = (uint16_t)rx_buffer[reg];
		reg++;
		high = (uint16_t)(rx_buffer[reg]&0x0F)<<8;
		cellADC12bits[k] = low + high;

		high = (uint16_t)(rx_buffer[reg]&0xF0)>>4;
		reg++;
		low = (rx_buffer[reg])<<4;
		cellADC12bits[k+1] = low + high;

		reg++;
	}

	//Calculating and checking Cell Status for LiPO
	for ( int8_t i=0; i<6; i++)
	{
		Battery->Cell[i]= ((float)cellADC12bits[i] - 512)*0.0015;

		if( Battery->Cell[i] < 3.5  ){
			Battery->status[i] = 0x02;
		}else if( Battery->Cell[i] < 3.1  ){ //VERIFICAR
			Battery->status[i] = 0x03; //SHUTDOWN
		}
		else{
			Battery->status[i] = 0x01;
		}
	}

	//Calculating Battery 1 and 2 Tension
	Battery->Battery1 = Battery->Cell[0] + Battery->Cell[1] + Battery->Cell[2];
	Battery->Battery2 = Battery->Cell[3] + Battery->Cell[4] + Battery->Cell[5];

	return 1;
}

void write_config ()
{
	uint8_t PEC;
	uint8_t byte;

	CS_Low();

	byte=0x80; //Address
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC);

	byte=0x01; //WRCFG command
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC);

	byte=0x11; //CFGR0 byte
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);

	byte=0x00; //CFGR1 byte
	PEC = computePEC(byte,PEC);
	SPIPutGetByte(byte);

	byte=0xF0; //CFGR2 byte
	PEC = computePEC(byte,PEC);
	SPIPutGetByte(byte);

	byte=0xFF; //CFGR3 byte
	PEC = computePEC(byte,PEC);
	SPIPutGetByte(byte);

	byte=0x00; //CFGR4 byte
	PEC = computePEC(byte,PEC);
	SPIPutGetByte(byte);

	byte=0x00; //CFGR5 byte
	PEC = computePEC(byte,PEC);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC);

	CS_High();
}

void read_config ()
{
	char buffer[50];

	char rx_buffer[7];
	uint8_t PEC;
	uint8_t byte;

	sprintf(buffer,"Reading LTC6803 Config \n\r");
	USARTPutString(buffer,strlen(buffer));

	CS_Low();

	byte=0x80; //Address
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC);

	byte=0x02; //RDCFG command
	PEC = computePEC(byte,0x41);
	SPIPutGetByte(byte);
	SPIPutGetByte(PEC);

	for(int i=0; i<7; i++)//CFGRx[0-5]+PEC
	{
		rx_buffer[i] = SPIPutGetByte(0x00); //CFGRx [0-5]
		PEC = computePEC(rx_buffer[i],PEC);

		//sprintf(buffer,"Read bytes %i 0x%x\r\n" , i , rx_buffer[i]);
	    //USARTPutString(buffer,strlen(buffer));
	}

	for(int i=0; i<7; i++)//CFGRx[0-5]+PEC
	{
		//sprintf(buffer,"Read bytes %i 0x%x\r\n" , i , rx_buffer[i]);
		//USARTPutString(buffer,strlen(buffer));
	}
	CS_High();
}


uint8_t computePEC(uint8_t byte, uint8_t pec)
{
	uint8_t in0, in1, in2;
    for(int i=0; i<8; i++)
    {
        in0 = ((byte >> (7 - i)) & 0x01) ^ ((pec >> 7) & 0x01);
        in1 = in0 ^ ((pec >> 0) & 0x01);
        in2 = in0 ^ ((pec >> 1) & 0x01);
        pec = in0 | (in1 << 1) | (in2 << 2) | ((pec << 1) & ~0x07);
    }
    return pec;
}

