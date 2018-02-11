/*Include---------------------------*/
#include"stm32f10x_lib.h"		//�������е�ͷ�ļ�
#include<stdio.h>

//----------------��������--------------------
void Delay_MS(u16 dly);
void RCC_Configuration(void);
void GPIO_Configuration(void);
void USART3_Configuration(void);


/*******************************************************************************
* Function Name  : main
* Description    : Main program.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/ 
int main(void)
{	
	#ifdef DEBUG
	debug();
	#endif
	//��33�� SPI������ܣ�����
	u8 data = 0x25;	//����2����������0010 0101 
	u8 i;
	//------------��ʼ��------------
	RCC_Configuration();
	GPIO_Configuration();

 	//------------��������ܵĿ���------------
	//	smaA1-PC8:0��ͨ		RCK--PA1	
	//SCK0--SPI1SCK--PA5		MISO0--SPIMISO--PA6		MOSI--SPIMOSI--PA7		595_nCS--PA0
	
	//1.smaA1:PC8=0,λѡ	 595_nCS��PA0:0��Ƭѡ
	GPIO_ResetBits(GPIOC, GPIO_Pin_8);
	GPIO_ResetBits(GPIOA, GPIO_Pin_0);
	
	//2.SCK0:PA5������ MOSI0--PA7��������	����2����������1010 0100
		for(i=0;i<8;i++)
	{  
		Delay_MS(2);
		if((data&0x80)==0x00)
			GPIO_ResetBits(GPIOA, GPIO_Pin_7); 
		else
			GPIO_SetBits(GPIOA, GPIO_Pin_7); 	  
		GPIO_ResetBits(GPIOA, GPIO_Pin_5);   //SCK0--SPI1SCK--PA5=0
		Delay_MS(5);
		GPIO_SetBits(GPIOA, GPIO_Pin_5);  //SCK0--SPI1SCK--PA5=1
		data<<=1;
	}	
	//3.RCK--PA1����������  595оƬ
	GPIO_ResetBits(GPIOA, GPIO_Pin_1);
	Delay_MS(5);
	GPIO_SetBits(GPIOA, GPIO_Pin_1);
}

/*******************************************************************************
* Function Name  : Delay_Ms
* Description    : delay 1 ms.
* Input          : dly (ms)
* Output         : None
* Return         : None
*******************************************************************************/
void Delay_MS(u16 dly)
{
	u16 i,j;
	for(i=0;i<dly;i++)
		for(j=1000;j>0;j--);
}

/*******************************************************************************
* Function Name  : RCC_Configuration
* Description    : Configures the different system clocks.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RCC_Configuration(void)
{
	//----------ʹ���ⲿRC����-----------
	RCC_DeInit();			//��ʼ��Ϊȱʡֵ
	RCC_HSEConfig(RCC_HSE_ON);	//ʹ���ⲿ�ĸ���ʱ�� 
	while(RCC_GetFlagStatus(RCC_FLAG_HSERDY) == RESET);	//�ȴ��ⲿ����ʱ��ʹ�ܾ���
	
	FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);	//Enable Prefetch Buffer
	FLASH_SetLatency(FLASH_Latency_2);		//Flash 2 wait state
	
	RCC_HCLKConfig(RCC_SYSCLK_Div1);		//HCLK = SYSCLK
	RCC_PCLK2Config(RCC_HCLK_Div1);			//PCLK2 =  HCLK
	RCC_PCLK1Config(RCC_HCLK_Div2);			//PCLK1 = HCLK/2
	RCC_PLLConfig(RCC_PLLSource_HSE_Div1,RCC_PLLMul_9);	//PLLCLK = 8MHZ * 9 =72MHZ
	RCC_PLLCmd(ENABLE);			//Enable PLLCLK

	while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET);	//Wait till PLLCLK is ready
    RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);	//Select PLL as system clock
	while(RCC_GetSYSCLKSource()!=0x08);		//Wait till PLL is used as system clock source
	
	//---------����Ӧ����ʱ��--------------------
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO,ENABLE);	//ʹ��APB2�����GPIOA��ʱ��		 
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3,ENABLE);
	//����ʱ��
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOE | RCC_APB2Periph_GPIOC,ENABLE);
}

/*******************************************************************************
* Function Name  : GPIO_Configuration
* Description    : ��ʼ��GPIO����
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void GPIO_Configuration(void)
{
	//	smaA1-PC8:0��ͨ		RCK--PA1	
	//SCK0--SPI1SCK--PA5		MISO0--SPIMISO--PA6		MOSI--SPIMOSI--PA7		595_nCS--PA0
	GPIO_InitTypeDef	GPIO_InitStructure;		//����һ���ṹ�����

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_5 | GPIO_Pin_7; 	//ѡ��PA0 PA1 PA5 PA7
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	 //�ܽ�Ƶ��Ϊ50MHZ
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;	 //���ģʽΪ�������
	GPIO_Init(GPIOA,&GPIO_InitStructure);				 //��ʼ��PA0 PA1 PA5 PA7

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6; 	//ѡ��PA6
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	 //�ܽ�Ƶ��Ϊ50MHZ
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;	 //���ģʽΪ��������
	GPIO_Init(GPIOA,&GPIO_InitStructure);				 //��ʼ��PA6

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8; 	//ѡ��PC8
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	 //�ܽ�Ƶ��Ϊ50MHZ
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;	 //���ģʽΪ�������
	GPIO_Init(GPIOC,&GPIO_InitStructure);				 //��ʼ��PC8	
} 

void USART3_Configuration(void)
{
	USART_InitTypeDef  U3;
	U3.USART_BaudRate =9600;
	U3.USART_WordLength = USART_WordLength_8b;
	U3.USART_StopBits = USART_StopBits_1;
	U3.USART_Parity = USART_Parity_No;
	U3.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;
	U3.USART_HardwareFlowControl = USART_HardwareFlowControl_None; 

	USART_Init(USART3, &U3);

	USART_Cmd(USART3,ENABLE);
}


