//#include "stm32f10x.h"
//#include "delay.h"
//#include "sys.h"
#include  "stm32f10x_lib.h"		//�������е�ͷ�ļ�
#include	"stm32f10x_map.h"
#include <stdio.h>

/*********************************************************************/
//��14�� λ�󶨵ķ�װ
#define GPIOA_ODR_ADDR (GPIOA_BASE+0X0C)		//0x4001080C  
#define GPIOA_IDR_ADDR (GPIOA_BASE+0X08)		
#define GPIOB_ODR_ADDR (GPIOB_BASE+0X0C)		//0x40010C0C
#define GPIOB_IDR_ADDR (GPIOB_BASE+0X08)		
#define GPIOC_ODR_ADDR (GPIOC_BASE+0X0C)		//0x4001100C
#define GPIOC_IDR_ADDR (GPIOC_BASE+0X08)	
#define GPIOD_ODR_ADDR (GPIOD_BASE+0X0C)		//0x4001140C
#define GPIOD_IDR_ADDR (GPIOD_BASE+0X08)
#define GPIOE_ODR_ADDR (GPIOE_BASE+0X0C)		//0x4001180C
#define GPIOE_IDR_ADDR (GPIOE_BASE+0X08)

#define BitBand(Addr,BitNum)  ((Addr & 0xF0000000) + 0x2000000 + ((Addr & 0xfffff) << 5 )+ (BitNum << 2))		//Aliaseλ������ַ
#define MeM_Addr(addr)    *((volatile unsigned long *)(addr))		//���volatileΪ��ȫ���
																																//volatile�ؼ��� ���߱�������Ҫ�Ż���ǰ����

#define PAout(n)	MeM_Addr(BitBand(GPIOA_ODR_ADDR,n))		//PA�ڵ����
#define PAin(n)		MeM_Addr(BitBand(GPIOA_IDR_ADDR,n))			//PA�ڵ�����
#define PBout(n)	MeM_Addr(BitBand(GPIOB_ODR_ADDR,n))		//PB�ڵ����
#define PBin(n)		MeM_Addr(BitBand(GPIOB_IDR_ADDR,n))			//PB�ڵ�����
#define PCout(n)	MeM_Addr(BitBand(GPIOC_ODR_ADDR,n))		//PC�ڵ����
#define PCin(n)		MeM_Addr(BitBand(GPIOC_IDR_ADDR,n))			//PC�ڵ�����
#define PDout(n)	MeM_Addr(BitBand(GPIOD_ODR_ADDR,n))		//PD�ڵ����
#define PDin(n)		MeM_Addr(BitBand(GPIOD_IDR_ADDR,n))			//PD�ڵ�����
#define PEout(n)	MeM_Addr(BitBand(GPIOE_ODR_ADDR,n))		//PE�ڵ����
#define PEin(n)		MeM_Addr(BitBand(GPIOE_IDR_ADDR,n))			//PE�ڵ�����

/*************************��������*************************************/
void Delay_MS(u16 dly);
void LS74164_Send(u8 data);
void RCC_Configuration(void);
void GPIO_Configuration(void);
int fputc(int ch,FILE* f);
void 	USART3_Configuration(u32 BaudRate);
/**********************************************************************/
/**********************************************************
** ������: main
** ��������: ʹ��ϵͳ�ļ�ʹPA1,PA2,PB1�������������
** �������: ��
** �������: ��
** ˵���������������ʵ�ַ�ʽ
	1.ʹ��STM32��λ�ι���
	2.ֱ�Ӳ����Ĵ���
	3.ʹ�ÿ⺯������
	ʹ��λ�ι�����ֱ�Ӳ����Ĵ����ٶȲ�࣬ʹ�ÿ⺯���ٶ��������ö�
	����ʹ�����������Էֱ�鿴���ַ�ʽ��ִ��ʱ��
***********************************************************/
	//��28�� USARTӲ������ ��ӳ��
int main()
{
	#ifdef DEBUG 
	debug();
	#endif
	
	u8 i,data;
	u8 tab[]="HELLO WORLD!";
	data = 'A';
	//-----------��ʼ��-------------------
	GPIO_Configuration();		//���Ÿ��ã���ӳ��
	RCC_Configuration();		//��������ʱ�ӽ�
	USART3_Configuration(9600);	//�����ʵ�����

	//-----------��USART3��������-------------------
	for(i=0;i<13;i++)
	{
		USART_SendData(USART3,tab[i]);
		Delay_MS(200);
	}
	
}

	

/*******************************************************************************
* Function Name  : printf-foutc
* Description    : ���¶������C�⣨studio��prontf���� �ļ���->����usart1.
* Input          : ch,*f
* Output         : None
* Return         : None
*******************************************************************************/
int fputc(int ch,FILE* f)
{
	//ch�͸�USART1
	USART_SendData(USART1,ch);
	//�ȴ��������
	while(USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET) ;
	//����ch
	return (ch);
}

/*******************************************************************************
* Function Name  :USART3_Configuration
* Description    : Configures USART3
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void 	USART3_Configuration(u32 BaudRate)
{
	USART_InitTypeDef USART3_InitStructure; 
	USART3_InitStructure.USART_BaudRate = BaudRate; 
	USART3_InitStructure.USART_WordLength = USART_WordLength_8b; 
	USART3_InitStructure.USART_StopBits = USART_StopBits_1; 
	USART3_InitStructure.USART_Parity = USART_Parity_No; 
	USART3_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None; 
	USART3_InitStructure.USART_Mode = USART_Mode_Tx | USART_Mode_Rx;  
	USART_Init(USART3, &USART3_InitStructure);		//����д��USART3�Ĵ���
	
	USART_Cmd(USART3, ENABLE);	//ʹ��USART����
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
	
	//FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);	//Enable Prefetch Buffer
	//FLASH_SetLatency(FLASH_Latency_2);		//Flash 2 wait state
	
	RCC_HCLKConfig(RCC_SYSCLK_Div1);		//HCLK = SYSCLK
	RCC_PCLK2Config(RCC_HCLK_Div1);			//PCLK2 =  HCLK
	RCC_PCLK1Config(RCC_HCLK_Div2);			//PCLK1 = HCLK/2
	RCC_PLLConfig(RCC_PLLSource_HSE_Div1,RCC_PLLMul_9);	//PLLCLK = 8MHZ * 9 =72MHZ
	RCC_PLLCmd(ENABLE);			//Enable PLLCLK

	while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET){};	//Wait till PLLCLK is ready
    RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);	//Select PLL as system clock
	while(RCC_GetSYSCLKSource()!=0x08);		//Wait till PLL is used as system clock source
	
	//---------����Ӧ����ʱ��--------------------	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC,ENABLE);	//ʹ��APB2�����GPIOC��ʱ��
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO,ENABLE);	
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3,ENABLE);
	
	//����ʱ��
	//ʹ��APB2�����GPIOB��ʱ��	,ʹ��APB2�����GPIOE��ʱ��
	//RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOE | RCC_APB2Periph_GPIOA,ENABLE); 
	
	//GPIO_PinRemapConfig(GPIO_Remap_USART1,ENABLE);	 	 
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
	//USART3��PC10:���ù���		PC11:���ù���
  GPIO_InitTypeDef GPIO_InitStructure;		//����һ���ṹ�����

  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;		//ѡ��PC.10(TXD)
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	//�ܽ�Ƶ��Ϊ50MHz
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;		//���ģʽΪ�����������
  GPIO_Init(GPIOC, &GPIO_InitStructure);			//��ʼ��GPIOC�Ĵ���

  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;		//ѡ��PC.11(RXD)
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	//�ܽ�Ƶ��Ϊ50MHz
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;		//���ģʽΪ�����������
  GPIO_Init(GPIOC, &GPIO_InitStructure);			//��ʼ��GPIOC�Ĵ���
	
  //��USART3��TXD��RXD��ӳ�䵽PC10��PC11
	GPIO_PinRemapConfig(GPIO_PartialRemap_USART3,ENABLE);


}



void LS74164_Send(u8 data)
{
		u8 i;
	data = 0xf2;
	PBout(0)=1;
	for(i=0;i<8;i++)
	{
		 
		Delay_MS(1);
		if((data&0x01)==0x01)
		{
			PAout(0)=1;
		}
		else
		{
			PAout(0)=0;
		}
		PAout(1)=0;
		Delay_MS(1);
		PAout(1)=1;
		data>>=1;
	}	
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
