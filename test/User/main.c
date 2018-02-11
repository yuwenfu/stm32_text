/*Include---------------------------*/
#include"stm32f10x_lib.h"		//包含所有的头文件
#include<stdio.h>

//----------------函数声明--------------------
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
	//第33集 SPI与数码管（二）
	u8 data = 0x25;	//数据2（共阳）：0010 0101 
	u8 i;
	//------------初始化------------
	RCC_Configuration();
	GPIO_Configuration();

 	//------------共阳数码管的控制------------
	//	smaA1-PC8:0导通		RCK--PA1	
	//SCK0--SPI1SCK--PA5		MISO0--SPIMISO--PA6		MOSI--SPIMOSI--PA7		595_nCS--PA0
	
	//1.smaA1:PC8=0,位选	 595_nCS：PA0:0，片选
	GPIO_ResetBits(GPIOC, GPIO_Pin_8);
	GPIO_ResetBits(GPIOA, GPIO_Pin_0);
	
	//2.SCK0:PA5上升沿 MOSI0--PA7数据输入	数据2（共阳）：1010 0100
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
	//3.RCK--PA1上升沿锁存  595芯片
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
	//----------使用外部RC晶振-----------
	RCC_DeInit();			//初始化为缺省值
	RCC_HSEConfig(RCC_HSE_ON);	//使能外部的高速时钟 
	while(RCC_GetFlagStatus(RCC_FLAG_HSERDY) == RESET);	//等待外部高速时钟使能就绪
	
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
	
	//---------打开相应外设时钟--------------------
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO,ENABLE);	//使能APB2外设的GPIOA的时钟		 
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3,ENABLE);
	//开启时钟
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOE | RCC_APB2Periph_GPIOC,ENABLE);
}

/*******************************************************************************
* Function Name  : GPIO_Configuration
* Description    : 初始化GPIO外设
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void GPIO_Configuration(void)
{
	//	smaA1-PC8:0导通		RCK--PA1	
	//SCK0--SPI1SCK--PA5		MISO0--SPIMISO--PA6		MOSI--SPIMOSI--PA7		595_nCS--PA0
	GPIO_InitTypeDef	GPIO_InitStructure;		//声明一个结构体变量

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_5 | GPIO_Pin_7; 	//选择PA0 PA1 PA5 PA7
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	 //管脚频率为50MHZ
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;	 //输出模式为推挽输出
	GPIO_Init(GPIOA,&GPIO_InitStructure);				 //初始化PA0 PA1 PA5 PA7

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6; 	//选择PA6
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	 //管脚频率为50MHZ
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;	 //输出模式为浮空输入
	GPIO_Init(GPIOA,&GPIO_InitStructure);				 //初始化PA6

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8; 	//选择PC8
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	 //管脚频率为50MHZ
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;	 //输出模式为推挽输出
	GPIO_Init(GPIOC,&GPIO_InitStructure);				 //初始化PC8	
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


