//#include "stm32f10x.h"
//#include "delay.h"
//#include "sys.h"
#include  "stm32f10x_lib.h"		//包含所有的头文件
#include	"stm32f10x_map.h"
#include <stdio.h>

/**********************************************************
** 函数名: void All_GPIO_Config
** 功能描述: 所有的GPIO口配置放在这里
** 输入参数: 无
** 输出参数: 无
***********************************************************/
//void All_GPIO_Config(void)
//{
//	GPIO_InitTypeDef GPIO_InitStructure;  //定义GPIO结构体	
//	/*允许总线CLOCK,在使用GPIO之前必须允许相应端的时钟.
//	从STM32的设计角度上说,没被允许的端将不接入时钟,也就不会耗能,
//	这是STM32节能的一种技巧,*/
//	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);//使能GPIOA口时钟
//	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);//使能GPIOB口时钟

//	/* PA1,2输出*/
//	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1|GPIO_Pin_2; //PA1,PA2配置
//	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;	//推挽输出
//	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	//50M时钟速度
//	GPIO_Init(GPIOA, &GPIO_InitStructure); //根据以上参数初始化结构体
//	
//	/*PB1,输出*/
//	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;//PB1
//	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;	//推挽输出
//	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	//50M时钟速度
//	GPIO_Init(GPIOB, &GPIO_InitStructure);
//}

/**********************************************************
** 函数名: main
** 功能描述: 使用系统文件使PA1,PA2,PB1口引脚输出方波
** 输入参数: 无
** 输出参数: 无
** 说明：下面介绍三种实现方式
	1.使用STM32的位段功能
	2.直接操作寄存器
	3.使用库函数操作
	使用位段功能与直接操作寄存器速度差不多，使用库函数速度明显慢得多
	可以使用软件仿真调试分别查看三种方式的执行时间
***********************************************************/
int main(void){
	
	
	return(1);
	
}	
	

////int main(void)
////{
//    //SystemInit(); //系统时钟初始化，72MHz
//	Stm32_Clock_Init(12); //系统时钟设置为12倍频
//	delay_init(96);//系统SysTick初始化
//	All_GPIO_Config();//所有GPIO配置
//  	for(;;)//循环
//  	{
//      PAout(1)=1;//PA1=1
//	  PAout(2)=1;//PA2=1
//	  PBout(1)=1;//PB1=1
//	  delay_ms(1); //使用SysTick(系统滴嗒定时器)延时1ms
//	  PAout(1)=0;//PA1=0
//	  PAout(2)=0;//PA2=0
//	  PBout(1)=0;//PB1=0
//      delay_ms(1); //使用SysTick相对精确延时1ms	

//	  //或者直接使用寄存器操作
//	  /*GPIOA->BSRR=GPIO_Pin_1;//PA1=1
//	  GPIOA->BSRR=GPIO_Pin_2;//PA2=1
//	  GPIOB->BSRR=GPIO_Pin_1;//PB1=1
//	  delay_ms(1); //使用SysTick延时1ms
//	  GPIOA->BRR=GPIO_Pin_1;//PA1=0
//	  GPIOA->BRR=GPIO_Pin_2;//PA2=0
//	  GPIOB->BRR=GPIO_Pin_1;//PB1=0
//      delay_ms(1); //使用SysTick相对精确延时1ms	 */

//	  //或者使用库函数操作
//	  /*GPIO_SetBits(GPIOA, GPIO_Pin_1);//PA1=1
//	  GPIO_SetBits(GPIOA, GPIO_Pin_2);//PA2=1
//	  GPIO_SetBits(GPIOB, GPIO_Pin_1);//PB1=1
//	  delay_ms(1); //延时1ms
//	  GPIO_ResetBits(GPIOA, GPIO_Pin_1);//PA1=0
//	  GPIO_ResetBits(GPIOA, GPIO_Pin_2);//PA2=0
//	  GPIO_ResetBits(GPIOB, GPIO_Pin_1);//PB1=0
//      delay_ms(1); //延时1ms */

//  	}
//}
