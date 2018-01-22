/*Include---------------------------*/
#include"stm32f10x_lib.h"		//包含所有的头文件
#include<stdio.h>

//----------------函数声明--------------------
void Delay_MS(u16 dly);
void RCC_Configuration(void);
void GPIO_Configuration(void);


/*******************************************************************************
* Function Name  : main
* Description    : Main program.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/ 
int  main(void)
{
//	GPIOA->CRL = 0x00000000;
//	GPIOA->CRH = 0xffffffff;
	
//1.设置GPIOA的工作模式：GPIOA.0，GPIOA.1 推挽式输出，速度：50Mhz
//	GPIOA->CRL = 0x33;	//0x00000033
//2.在相应的引脚输出一个电平
//	GPIOA->ODR = 0x00;	//00
//	GPIOA->ODR = 0x03;	//11
	
//	//1.PA.0工作在推挽输出，PA.8输入：浮空输入
//	GPIOA->CRL = 0x03;	//0x**** 0011
//	GPIOA->CRH = 0x04;	//0x0000 ****
//	//2.PA.0 ==PA.8
//	while(1)
//	{
//		if((GPIOA->IDR & 0x0100)==0x0100)
//			GPIOA->ODR = 0x01;
//		else
//			GPIOA->ODR = 0x00;
//	}
	
	//1.PA.0~PA.7输出，PA.8~PA.15输入（浮空输入）
		GPIOA->CRL = 0x33333333;
		GPIOA->CRH = 0x44444444;
	//2.输入状态反映到对应引脚的输出
		while(1)
		{
			if((GPIOA->IDR & 0x0100)==0x0100)		GPIOA->ODR=GPIOA->ODR | 0x01;//置1

			else		GPIOA->ODR=GPIOA->ODR & (~0x01);//置0
		}
	
	//	return(1);
}

//int main(void)
//{
//	u8  Data_595;
//	u8  i;
//	
//	//PBCRL = (1<<20);   //0x00 + 0x40010C00
//	/*
//	*(long int *)(0x40010C00) =  (1<<20); // PBCRL
//    *(long int *)(0x40011800+0x04) = (1<<8)|(1<<12);  //0x04	+ 0x40011800  ,PECRH
//
//	*(long int *)(0x40010C00+0x10) = (1<<5);   //PB5=1	  		 PBBSRR
//	*(long int *)(0x40011800+0x10) = (1<<10);  //PE10=1   0x40011800 + 0x10	PEBSRR
//
//	*(long int *)(0x40010C00 + 0x14) = (1<<5);   //PB5=0  0x40010C00 + 0x14	 PBBRR
//	*(long int *)(0x40011800 +0x14)  = (1<<10);   //PE10=0	 0x40011800 +0x14  PEBRR
//	*/
//	RCC_Configuration();
//	//GPIO 输出 
//	GPIO_Configuration();
//
//	while(1)
//	{
//		GPIO_ResetBits(GPIOC, GPIO_Pin_8);	  //	  PC8=0
//		GPIO_SetBits(GPIOC, GPIO_Pin_9);	  //	  PC9=1
//		GPIO_ResetBits(GPIOA, GPIO_Pin_0);	  //	  PA0=0
//		//  PA7 =Data, 	   PA5  0->1  ,一共做8次
//		Data_595 = 0x92;
//		for(i=0;i<8;i++)
//		{
//			if((Data_595 & 0x80) == 0x80)  	 GPIO_SetBits(GPIOA, GPIO_Pin_7);
//			else 							 GPIO_ResetBits(GPIOA, GPIO_Pin_7);
//	
//			GPIO_ResetBits(GPIOA, GPIO_Pin_5);
//			GPIO_SetBits(GPIOA, GPIO_Pin_5);
//	
//			Data_595 =Data_595<<1;
//		}
//		//  PA1  0->1 锁存一次
//		GPIO_ResetBits(GPIOA, GPIO_Pin_1);
//		GPIO_SetBits(GPIOA, GPIO_Pin_1);
//	Delay_MS(10);
//
//	GPIO_SetBits(GPIOC, GPIO_Pin_8);	  //	  PC8=1
//	GPIO_ResetBits(GPIOC, GPIO_Pin_9);	  //	  PC9=0
//  	//  PA7 =Data, 	   PA5  0->1  ,一共做8次
//	Data_595 = 0x82;
//	for(i=0;i<8;i++)
//	{
//		if((Data_595 & 0x80) == 0x80)  	 GPIO_SetBits(GPIOA, GPIO_Pin_7);
//		else 							 GPIO_ResetBits(GPIOA, GPIO_Pin_7);
//
//		GPIO_ResetBits(GPIOA, GPIO_Pin_5);
//		GPIO_SetBits(GPIOA, GPIO_Pin_5);
//
//		Data_595 =Data_595<<1;
//	}
//	//  PA1  0->1 锁存一次
//	GPIO_ResetBits(GPIOA, GPIO_Pin_1);
//	GPIO_SetBits(GPIOA, GPIO_Pin_1);
//	Delay_MS(100);
//	}
//			
//}

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
//void RCC_Configuration(void)
//{
//	//----------使用外部RC晶振-----------
//	RCC_DeInit();			//初始化为缺省值
//	RCC_HSEConfig(RCC_HSE_ON);	//使能外部的高速时钟 
//	while(RCC_GetFlagStatus(RCC_FLAG_HSERDY) == RESET);	//等待外部高速时钟使能就绪
//	
//	FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);	//Enable Prefetch Buffer
//	FLASH_SetLatency(FLASH_Latency_2);		//Flash 2 wait state
//	
//	RCC_HCLKConfig(RCC_SYSCLK_Div1);		//HCLK = SYSCLK
//	RCC_PCLK2Config(RCC_HCLK_Div1);			//PCLK2 =  HCLK
//	RCC_PCLK1Config(RCC_HCLK_Div2);			//PCLK1 = HCLK/2
//	RCC_PLLConfig(RCC_PLLSource_HSE_Div1,RCC_PLLMul_9);	//PLLCLK = 8MHZ * 9 =72MHZ
//	RCC_PLLCmd(ENABLE);			//Enable PLLCLK
//
//	while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET);	//Wait till PLLCLK is ready
//    RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);	//Select PLL as system clock
//	while(RCC_GetSYSCLKSource()!=0x08);		//Wait till PLL is used as system clock source
//	
//	//---------打开相应外设时钟--------------------
//	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA,ENABLE);	//使能APB2外设的GPIOA的时钟	
//	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC,ENABLE);	//使能APB2外设的GPIOC的时钟		 
//}

/*******************************************************************************
* Function Name  : GPIO_Configuration
* Description    : 初始化GPIO外设
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void GPIO_Configuration(void)
{
	GPIO_InitTypeDef	GPIO;		//声明一个结构体变量
	GPIO.GPIO_Pin = GPIO_Pin_All; 	//选择PX.3
	GPIO.GPIO_Speed = GPIO_Speed_50MHz;	 //管脚频率为50MHZ
	GPIO.GPIO_Mode = GPIO_Mode_Out_PP;	 //输出模式为推挽输出
	GPIO_Init(GPIOA,&GPIO);				 //初始化GPIOA寄存器

	GPIO.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
	GPIO.GPIO_Speed = GPIO_Speed_50MHz;	 //管脚频率为50MHZ
	GPIO.GPIO_Mode = GPIO_Mode_Out_PP;	 //输出模式为推挽输出
	GPIO_Init(GPIOC,&GPIO);				 //初始化GPIOA寄存器	
} 
