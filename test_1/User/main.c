//#include "stm32f10x.h"
//#include "delay.h"
//#include "sys.h"
#include  "stm32f10x_lib.h"		//�������е�ͷ�ļ�
#include	"stm32f10x_map.h"
#include <stdio.h>

/**********************************************************
** ������: void All_GPIO_Config
** ��������: ���е�GPIO�����÷�������
** �������: ��
** �������: ��
***********************************************************/
//void All_GPIO_Config(void)
//{
//	GPIO_InitTypeDef GPIO_InitStructure;  //����GPIO�ṹ��	
//	/*��������CLOCK,��ʹ��GPIO֮ǰ����������Ӧ�˵�ʱ��.
//	��STM32����ƽǶ���˵,û������Ķ˽�������ʱ��,Ҳ�Ͳ������,
//	����STM32���ܵ�һ�ּ���,*/
//	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);//ʹ��GPIOA��ʱ��
//	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);//ʹ��GPIOB��ʱ��

//	/* PA1,2���*/
//	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1|GPIO_Pin_2; //PA1,PA2����
//	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;	//�������
//	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	//50Mʱ���ٶ�
//	GPIO_Init(GPIOA, &GPIO_InitStructure); //�������ϲ�����ʼ���ṹ��
//	
//	/*PB1,���*/
//	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;//PB1
//	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;	//�������
//	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;	//50Mʱ���ٶ�
//	GPIO_Init(GPIOB, &GPIO_InitStructure);
//}

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
int main(void){
	
	
	return(1);
	
}	
	

////int main(void)
////{
//    //SystemInit(); //ϵͳʱ�ӳ�ʼ����72MHz
//	Stm32_Clock_Init(12); //ϵͳʱ������Ϊ12��Ƶ
//	delay_init(96);//ϵͳSysTick��ʼ��
//	All_GPIO_Config();//����GPIO����
//  	for(;;)//ѭ��
//  	{
//      PAout(1)=1;//PA1=1
//	  PAout(2)=1;//PA2=1
//	  PBout(1)=1;//PB1=1
//	  delay_ms(1); //ʹ��SysTick(ϵͳ��શ�ʱ��)��ʱ1ms
//	  PAout(1)=0;//PA1=0
//	  PAout(2)=0;//PA2=0
//	  PBout(1)=0;//PB1=0
//      delay_ms(1); //ʹ��SysTick��Ծ�ȷ��ʱ1ms	

//	  //����ֱ��ʹ�üĴ�������
//	  /*GPIOA->BSRR=GPIO_Pin_1;//PA1=1
//	  GPIOA->BSRR=GPIO_Pin_2;//PA2=1
//	  GPIOB->BSRR=GPIO_Pin_1;//PB1=1
//	  delay_ms(1); //ʹ��SysTick��ʱ1ms
//	  GPIOA->BRR=GPIO_Pin_1;//PA1=0
//	  GPIOA->BRR=GPIO_Pin_2;//PA2=0
//	  GPIOB->BRR=GPIO_Pin_1;//PB1=0
//      delay_ms(1); //ʹ��SysTick��Ծ�ȷ��ʱ1ms	 */

//	  //����ʹ�ÿ⺯������
//	  /*GPIO_SetBits(GPIOA, GPIO_Pin_1);//PA1=1
//	  GPIO_SetBits(GPIOA, GPIO_Pin_2);//PA2=1
//	  GPIO_SetBits(GPIOB, GPIO_Pin_1);//PB1=1
//	  delay_ms(1); //��ʱ1ms
//	  GPIO_ResetBits(GPIOA, GPIO_Pin_1);//PA1=0
//	  GPIO_ResetBits(GPIOA, GPIO_Pin_2);//PA2=0
//	  GPIO_ResetBits(GPIOB, GPIO_Pin_1);//PB1=0
//      delay_ms(1); //��ʱ1ms */

//  	}
//}
