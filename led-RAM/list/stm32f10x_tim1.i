#line 1 "lib\\src\\stm32f10x_tim1.c"













 

 
#line 1 ".\\lib\\inc\\stm32f10x_tim1.h"














 

 



 
#line 1 ".\\lib\\inc\\stm32f10x_map.h"
















 

 







 
#line 1 ".\\lib\\inc\\stm32f10x_conf.h"















 

 



 
#line 1 ".\\lib\\inc\\stm32f10x_type.h"
















 

 



 
 
typedef signed long  s32;
typedef signed short s16;
typedef signed char  s8;

typedef signed long  const sc32;   
typedef signed short const sc16;   
typedef signed char  const sc8;    

typedef volatile signed long  vs32;
typedef volatile signed short vs16;
typedef volatile signed char  vs8;

typedef volatile signed long  const vsc32;   
typedef volatile signed short const vsc16;   
typedef volatile signed char  const vsc8;    

typedef unsigned long  u32;
typedef unsigned short u16;
typedef unsigned char  u8;

typedef unsigned long  const uc32;   
typedef unsigned short const uc16;   
typedef unsigned char  const uc8;    

typedef volatile unsigned long  vu32;
typedef volatile unsigned short vu16;
typedef volatile unsigned char  vu8;

typedef volatile unsigned long  const vuc32;   
typedef volatile unsigned short const vuc16;   
typedef volatile unsigned char  const vuc8;    

typedef enum {FALSE = 0, TRUE = !FALSE} bool;

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

#line 75 ".\\lib\\inc\\stm32f10x_type.h"

 
 
 



 
#line 24 ".\\lib\\inc\\stm32f10x_conf.h"

 
 


 
 

 
 





 


 


 


 


 


 
#line 68 ".\\lib\\inc\\stm32f10x_conf.h"

 


 



 


 


 
#line 92 ".\\lib\\inc\\stm32f10x_conf.h"

 




 


 


 


 


 


 


 





 


 


 
#line 137 ".\\lib\\inc\\stm32f10x_conf.h"

 
#line 145 ".\\lib\\inc\\stm32f10x_conf.h"

 



 


 
#line 171 ".\\lib\\inc\\stm32f10x_conf.h"



 
#line 29 ".\\lib\\inc\\stm32f10x_map.h"
#line 30 ".\\lib\\inc\\stm32f10x_map.h"
#line 1 ".\\lib\\inc\\cortexm3_macro.h"















 

 



 
#line 24 ".\\lib\\inc\\cortexm3_macro.h"

 
 
 
 
void __WFI(void);
void __WFE(void);
void __SEV(void);
void __ISB(void);
void __DSB(void);
void __DMB(void);
void __SVC(void);
u32 __MRS_CONTROL(void);
void __MSR_CONTROL(u32 Control);
u32 __MRS_PSP(void);
void __MSR_PSP(u32 TopOfProcessStack);
u32 __MRS_MSP(void);
void __MSR_MSP(u32 TopOfMainStack);
void __RESETPRIMASK(void);
void __SETPRIMASK(void);
u32 __READ_PRIMASK(void);
void __RESETFAULTMASK(void);
void __SETFAULTMASK(void);
u32 __READ_FAULTMASK(void);
void __BASEPRICONFIG(u32 NewPriority);
u32 __GetBASEPRI(void);
u16 __REV_HalfWord(u16 Data);
u32 __REV_Word(u32 Data);



 
#line 31 ".\\lib\\inc\\stm32f10x_map.h"

 
 
 
 

 
typedef struct
{
  vu32 SR;	  
  vu32 CR1;	  
  vu32 CR2;	  
  vu32 SMPR1; 
  vu32 SMPR2; 
  vu32 JOFR1; 
  vu32 JOFR2; 
  vu32 JOFR3; 
  vu32 JOFR4; 
  vu32 HTR;	 
  vu32 LTR;	 
  vu32 SQR1; 
  vu32 SQR2; 
  vu32 SQR3; 
  vu32 JSQR; 
  vu32 JDR1; 
  vu32 JDR2; 
  vu32 JDR3; 
  vu32 JDR4; 
  vu32 DR;	 
} ADC_TypeDef;

 
typedef struct
{
  u32  RESERVED0;
  vu16 DR1;		   
  u16  RESERVED1;
  vu16 DR2;		   
  u16  RESERVED2;
  vu16 DR3;		   
  u16  RESERVED3;
  vu16 DR4;		   
  u16  RESERVED4;
  vu16 DR5;		   
  u16  RESERVED5;
  vu16 DR6;		   
  u16  RESERVED6;
  vu16 DR7;		   
  u16  RESERVED7;
  vu16 DR8;		   
  u16  RESERVED8;
  vu16 DR9;		   
  u16  RESERVED9;
  vu16 DR10;	   
  u16  RESERVED10; 
  vu16 RTCCR;	   
  u16  RESERVED11;
  vu16 CR;		   
  u16  RESERVED12;
  vu16 CSR;		   
  u16  RESERVED13[5];
  vu16 DR11;
  u16  RESERVED14;
  vu16 DR12;
  u16  RESERVED15;
  vu16 DR13;
  u16  RESERVED16;
  vu16 DR14;
  u16  RESERVED17;
  vu16 DR15;
  u16  RESERVED18;
  vu16 DR16;
  u16  RESERVED19;
  vu16 DR17;
  u16  RESERVED20;
  vu16 DR18;
  u16  RESERVED21;
  vu16 DR19;
  u16  RESERVED22;
  vu16 DR20;				  
  u16  RESERVED23;
  vu16 DR21;
  u16  RESERVED24;
  vu16 DR22;
  u16  RESERVED25;
  vu16 DR23;
  u16  RESERVED26;
  vu16 DR24;
  u16  RESERVED27;
  vu16 DR25;
  u16  RESERVED28;
  vu16 DR26;
  u16  RESERVED29;
  vu16 DR27;
  u16  RESERVED30;
  vu16 DR28;
  u16  RESERVED31;
  vu16 DR29;
  u16  RESERVED32;
  vu16 DR30;
  u16  RESERVED33; 
  vu16 DR31;
  u16  RESERVED34;
  vu16 DR32;
  u16  RESERVED35;
  vu16 DR33;
  u16  RESERVED36;
  vu16 DR34;
  u16  RESERVED37;
  vu16 DR35;
  u16  RESERVED38;
  vu16 DR36;
  u16  RESERVED39;
  vu16 DR37;
  u16  RESERVED40;
  vu16 DR38;
  u16  RESERVED41;
  vu16 DR39;
  u16  RESERVED42;
  vu16 DR40;
  u16  RESERVED43;
  vu16 DR41;
  u16  RESERVED44;
  vu16 DR42;
  u16  RESERVED45;    
} BKP_TypeDef;

 
typedef struct
{
  vu32 TIR;
  vu32 TDTR;
  vu32 TDLR;
  vu32 TDHR;
} CAN_TxMailBox_TypeDef;

typedef struct
{
  vu32 RIR;
  vu32 RDTR;
  vu32 RDLR;
  vu32 RDHR;
} CAN_FIFOMailBox_TypeDef;

typedef struct
{
  vu32 FR1;
  vu32 FR2;
} CAN_FilterRegister_TypeDef;

typedef struct
{
  vu32 MCR;
  vu32 MSR;
  vu32 TSR;
  vu32 RF0R;
  vu32 RF1R;
  vu32 IER;
  vu32 ESR;
  vu32 BTR;
  u32  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  u32  RESERVED1[12];
  vu32 FMR;
  vu32 FM1R;
  u32  RESERVED2;
  vu32 FS1R;
  u32  RESERVED3;
  vu32 FFA1R;
  u32  RESERVED4;
  vu32 FA1R;
  u32  RESERVED5[8];
  CAN_FilterRegister_TypeDef sFilterRegister[14];
} CAN_TypeDef;

 
typedef struct
{
  vu32 DR;
  vu8  IDR;
  u8   RESERVED0;
  u16  RESERVED1;
  vu32 CR;
} CRC_TypeDef;


 
typedef struct
{
  vu32 CR;
  vu32 SWTRIGR;
  vu32 DHR12R1;
  vu32 DHR12L1;
  vu32 DHR8R1;
  vu32 DHR12R2;
  vu32 DHR12L2;
  vu32 DHR8R2;
  vu32 DHR12RD;
  vu32 DHR12LD;
  vu32 DHR8RD;
  vu32 DOR1;
  vu32 DOR2;
} DAC_TypeDef;

 
typedef struct
{
  vu32 IDCODE;
  vu32 CR;	
}DBGMCU_TypeDef;

 
typedef struct
{
  vu32 CCR;	   
  vu32 CNDTR;  
  vu32 CPAR;   
  vu32 CMAR;   
} DMA_Channel_TypeDef;

typedef struct
{
  vu32 ISR;	   
  vu32 IFCR;   
} DMA_TypeDef;

 
typedef struct
{
  vu32 IMR;	  
  vu32 EMR;	  
  vu32 RTSR;  
  vu32 FTSR;  
  vu32 SWIER; 
  vu32 PR;	  
} EXTI_TypeDef;

 
typedef struct
{
  vu32 ACR;	    
  vu32 KEYR;    
  vu32 OPTKEYR;	
  vu32 SR;		
  vu32 CR;		
  vu32 AR;		
  vu32 RESERVED; 
  vu32 OBR;		
  vu32 WRPR;	
} FLASH_TypeDef;

typedef struct
{
  vu16 RDP;	  
  vu16 USER;  
  vu16 Data0; 
  vu16 Data1; 
  vu16 WRP0;  
  vu16 WRP1;  
  vu16 WRP2;  
  vu16 WRP3;  
} OB_TypeDef;

 
typedef struct
{
  vu32 BTCR[8];   
} FSMC_Bank1_TypeDef; 

typedef struct
{
  vu32 BWTR[7];
} FSMC_Bank1E_TypeDef;

typedef struct
{
  vu32 PCR2;
  vu32 SR2;
  vu32 PMEM2;
  vu32 PATT2;
  u32  RESERVED0;   
  vu32 ECCR2; 
} FSMC_Bank2_TypeDef;  

typedef struct
{
  vu32 PCR3;
  vu32 SR3;
  vu32 PMEM3;
  vu32 PATT3;
  u32  RESERVED0;   
  vu32 ECCR3; 
} FSMC_Bank3_TypeDef; 

typedef struct
{
  vu32 PCR4;
  vu32 SR4;
  vu32 PMEM4;
  vu32 PATT4;
  vu32 PIO4; 
} FSMC_Bank4_TypeDef; 

 
typedef struct
{
  vu32 CRL;	  
  vu32 CRH;	  
  vu32 IDR;	  
  vu32 ODR;	  
  vu32 BSRR;  
  vu32 BRR;	  
  vu32 LCKR;  
} GPIO_TypeDef;

typedef struct
{
  vu32 EVCR;     
  vu32 MAPR;	 
  vu32 EXTICR[4];
} AFIO_TypeDef;

 
typedef struct
{
  vu16 CR1;
  u16  RESERVED0;
  vu16 CR2;
  u16  RESERVED1;
  vu16 OAR1;
  u16  RESERVED2;
  vu16 OAR2;
  u16  RESERVED3;
  vu16 DR;
  u16  RESERVED4;
  vu16 SR1;
  u16  RESERVED5;
  vu16 SR2;
  u16  RESERVED6;
  vu16 CCR;
  u16  RESERVED7;
  vu16 TRISE;
  u16  RESERVED8;
} I2C_TypeDef;

 
typedef struct
{
  vu32 KR;	
  vu32 PR;	
  vu32 RLR;	
  vu32 SR;	
} IWDG_TypeDef;

 
typedef struct
{
  vu32 ISER[2];		  
  u32  RESERVED0[30]; 
  vu32 ICER[2];		  
  u32  RSERVED1[30];  
  vu32 ISPR[2];		  
  u32  RESERVED2[30];
  vu32 ICPR[2];
  u32  RESERVED3[30];
  vu32 IABR[2];
  u32  RESERVED4[62];
  vu32 IPR[15];
} NVIC_TypeDef;

typedef struct
{
  vuc32 CPUID;	 
  vu32 ICSR;	 
  vu32 VTOR;	 
  vu32 AIRCR;	 
  vu32 SCR;
  vu32 CCR;
  vu32 SHPR[3];
  vu32 SHCSR;
  vu32 CFSR;
  vu32 HFSR;
  vu32 DFSR;
  vu32 MMFAR;
  vu32 BFAR;
  vu32 AFSR;
} SCB_TypeDef;

 
typedef struct
{
  vu32 CR;
  vu32 CSR;
} PWR_TypeDef;

 
typedef struct
{
  vu32 CR;	     
  vu32 CFGR;	 
  vu32 CIR;		 
  vu32 APB2RSTR; 
  vu32 APB1RSTR; 
  vu32 AHBENR;	 
  vu32 APB2ENR;	 
  vu32 APB1ENR;	 
  vu32 BDCR;	 
  vu32 CSR;		 
} RCC_TypeDef;

 
typedef struct
{
  vu16 CRH;	      
  u16  RESERVED0; 
  vu16 CRL;		  
  u16  RESERVED1; 
  vu16 PRLH;	  
  u16  RESERVED2; 
  vu16 PRLL;	  
  u16  RESERVED3; 
  vu16 DIVH;	  
  u16  RESERVED4; 
  vu16 DIVL;	  
  u16  RESERVED5; 
  vu16 CNTH;	  
  u16  RESERVED6; 
  vu16 CNTL;	  
  u16  RESERVED7; 
  vu16 ALRH;	  
  u16  RESERVED8; 
  vu16 ALRL;	  
  u16  RESERVED9; 
} RTC_TypeDef;

 
typedef struct
{
  vu32 POWER;
  vu32 CLKCR;
  vu32 ARG;
  vu32 CMD;
  vuc32 RESPCMD;
  vuc32 RESP1;
  vuc32 RESP2;
  vuc32 RESP3;
  vuc32 RESP4;
  vu32 DTIMER;
  vu32 DLEN;
  vu32 DCTRL;
  vuc32 DCOUNT;
  vuc32 STA;
  vu32 ICR;
  vu32 MASK;
  u32  RESERVED0[2];
  vuc32 FIFOCNT;
  u32  RESERVED1[13];
  vu32 FIFO;
} SDIO_TypeDef;

 
typedef struct
{
  vu16 CR1;	      
  u16  RESERVED0;
  vu16 CR2;		  
  u16  RESERVED1;
  vu16 SR;		  
  u16  RESERVED2;
  vu16 DR;		  
  u16  RESERVED3;
  vu16 CRCPR;	  
  u16  RESERVED4;
  vu16 RXCRCR;	  
  u16  RESERVED5;
  vu16 TXCRCR;	  
  u16  RESERVED6;
  vu16 I2SCFGR;
  u16  RESERVED7;
  vu16 I2SPR;
  u16  RESERVED8;  
} SPI_TypeDef;

 
typedef struct
{
  vu32 CTRL;   
  vu32 LOAD;   
  vu32 VAL;	   
  vuc32 CALIB; 
} SysTick_TypeDef;

 
typedef struct
{
  vu16 CR1;		  
  u16  RESERVED0; 
  vu16 CR2;		  
  u16  RESERVED1; 
  vu16 SMCR;	  
  u16  RESERVED2;
  vu16 DIER;	  
  u16  RESERVED3;
  vu16 SR;		  
  u16  RESERVED4;
  vu16 EGR;		  
  u16  RESERVED5;
  vu16 CCMR1;	  
  u16  RESERVED6;
  vu16 CCMR2;	  
  u16  RESERVED7;
  vu16 CCER;	  
  u16  RESERVED8;
  vu16 CNT;		  
  u16  RESERVED9;
  vu16 PSC;		  
  u16  RESERVED10;
  vu16 ARR;		  
  u16  RESERVED11;
  vu16 RCR;		  
  u16  RESERVED12;
  vu16 CCR1;	  
  u16  RESERVED13;
  vu16 CCR2;	  
  u16  RESERVED14;
  vu16 CCR3;	  
  u16  RESERVED15;
  vu16 CCR4;	  
  u16  RESERVED16;
  vu16 BDTR;	  
  u16  RESERVED17;
  vu16 DCR;		  
  u16  RESERVED18;
  vu16 DMAR;	  
  u16  RESERVED19;
} TIM1_TypeDef;

 
typedef struct
{
  vu16 CR1;		
  u16 RESERVED0;
  vu16 CR2;	   
  u16 RESERVED1;
  vu16 SMCR;   
  u16 RESERVED2;
  vu16 DIER;   
  u16 RESERVED3;
  vu16 SR;		
  u16 RESERVED4;
  vu16 EGR;		
  u16 RESERVED5;
  vu16 CCMR1;  
  u16 RESERVED6;
  vu16 CCMR2;  
  u16 RESERVED7;
  vu16 CCER;  
  u16 RESERVED8;
  vu16 CNT;	  
  u16 RESERVED9;
  vu16 PSC;	  
  u16 RESERVED10;
  vu16 ARR;	  
  u16 RESERVED11[3];
  vu16 CCR1;  
  u16 RESERVED12;
  vu16 CCR2;  
  u16 RESERVED13;
  vu16 CCR3;  
  u16 RESERVED14;
  vu16 CCR4;  
  u16 RESERVED15[3];
  vu16 DCR;	  
  u16 RESERVED16;
  vu16 DMAR;  
  u16 RESERVED17; 
 
  vu16 RCR;		  
  vu16 BDTR;	  
} TIM_TypeDef;

 
typedef struct
{
  vu16 SR;		 
  u16  RESERVED0;
  vu16 DR;		 
  u16  RESERVED1;
  vu16 BRR;		 
  u16  RESERVED2;
  vu16 CR1;		 
  u16  RESERVED3;
  vu16 CR2;		 
  u16  RESERVED4;
  vu16 CR3;		 
  u16  RESERVED5;
  vu16 GTPR;	 
  u16  RESERVED6;
} USART_TypeDef;

 
typedef struct
{
  vu32 CR;	
  vu32 CFR;	
  vu32 SR;  
} WWDG_TypeDef;

 
 
 
 



 



 


 




#line 680 ".\\lib\\inc\\stm32f10x_map.h"

#line 697 ".\\lib\\inc\\stm32f10x_map.h"



#line 716 ".\\lib\\inc\\stm32f10x_map.h"

 

 


 






 


 






 
 
 

 



























































































































































































































#line 970 ".\\lib\\inc\\stm32f10x_map.h"














 
#line 1226 ".\\lib\\inc\\stm32f10x_map.h"

 
 
 



 
#line 23 ".\\lib\\inc\\stm32f10x_tim1.h"

 

 
typedef struct
{
  u16 TIM1_Prescaler;  
  u16 TIM1_CounterMode;	
  u16 TIM1_Period;	
  u16 TIM1_ClockDivision; 
  u8 TIM1_RepetitionCounter;  
} TIM1_TimeBaseInitTypeDef;

 
typedef struct
{
  u16 TIM1_OCMode;	 
  u16 TIM1_OutputState;	
  u16 TIM1_OutputNState; 
  u16 TIM1_Pulse;  
  u16 TIM1_OCPolarity; 
  u16 TIM1_OCNPolarity; 
  u16 TIM1_OCIdleState;	
  u16 TIM1_OCNIdleState; 

} TIM1_OCInitTypeDef;

 
typedef struct
{
  u16 TIM1_Channel;	 
  u16 TIM1_ICPolarity;  
  u16 TIM1_ICSelection; 
  u16 TIM1_ICPrescaler;	
  u8 TIM1_ICFilter;	   
} TIM1_ICInitTypeDef;

 
typedef struct
{
  u16 TIM1_OSSRState; 
  u16 TIM1_OSSIState; 
  u16 TIM1_LOCKLevel; 
  u16 TIM1_DeadTime;  
  u16 TIM1_Break;	  
  u16 TIM1_BreakPolarity; 
  u16 TIM1_AutomaticOutput; 
} TIM1_BDTRInitTypeDef;

 
 
#line 80 ".\\lib\\inc\\stm32f10x_tim1.h"

#line 87 ".\\lib\\inc\\stm32f10x_tim1.h"

#line 96 ".\\lib\\inc\\stm32f10x_tim1.h"
 






 
















 








 












 






 






 






 






 






 






 





 










 






 






 






 






 






 








 









                                         
 


 
#line 268 ".\\lib\\inc\\stm32f10x_tim1.h"



#line 279 ".\\lib\\inc\\stm32f10x_tim1.h"

 
#line 300 ".\\lib\\inc\\stm32f10x_tim1.h"

#line 320 ".\\lib\\inc\\stm32f10x_tim1.h"

 
#line 340 ".\\lib\\inc\\stm32f10x_tim1.h"

#line 359 ".\\lib\\inc\\stm32f10x_tim1.h"

 
#line 368 ".\\lib\\inc\\stm32f10x_tim1.h"



 










 
#line 391 ".\\lib\\inc\\stm32f10x_tim1.h"

#line 400 ".\\lib\\inc\\stm32f10x_tim1.h"










 






 






 






  








 
#line 449 ".\\lib\\inc\\stm32f10x_tim1.h"


                                      

 






 






 





                                     
 






  
#line 490 ".\\lib\\inc\\stm32f10x_tim1.h"

#line 499 ".\\lib\\inc\\stm32f10x_tim1.h"

 










 








 






 
#line 540 ".\\lib\\inc\\stm32f10x_tim1.h"

#line 553 ".\\lib\\inc\\stm32f10x_tim1.h"


                                  

 
 

void TIM1_DeInit(void);
void TIM1_TimeBaseInit(TIM1_TimeBaseInitTypeDef* TIM1_TimeBaseInitStruct);
void TIM1_OC1Init(TIM1_OCInitTypeDef* TIM1_OCInitStruct);
void TIM1_OC2Init(TIM1_OCInitTypeDef* TIM1_OCInitStruct);
void TIM1_OC3Init(TIM1_OCInitTypeDef* TIM1_OCInitStruct);
void TIM1_OC4Init(TIM1_OCInitTypeDef* TIM1_OCInitStruct);
void TIM1_BDTRConfig(TIM1_BDTRInitTypeDef *TIM1_BDTRInitStruct);
void TIM1_ICInit(TIM1_ICInitTypeDef* TIM1_ICInitStruct);
void TIM1_PWMIConfig(TIM1_ICInitTypeDef* TIM1_ICInitStruct);
void TIM1_TimeBaseStructInit(TIM1_TimeBaseInitTypeDef* TIM1_TimeBaseInitStruct);
void TIM1_OCStructInit(TIM1_OCInitTypeDef* TIM1_OCInitStruct);
void TIM1_ICStructInit(TIM1_ICInitTypeDef* TIM1_ICInitStruct);
void TIM1_BDTRStructInit(TIM1_BDTRInitTypeDef* TIM1_BDTRInitStruct);
void TIM1_Cmd(FunctionalState NewState);
void TIM1_CtrlPWMOutputs(FunctionalState Newstate);
void TIM1_ITConfig(u16 TIM1_IT, FunctionalState NewState);
void TIM1_DMAConfig(u16 TIM1_DMABase, u16 TIM1_DMABurstLength);
void TIM1_DMACmd(u16 TIM1_DMASource, FunctionalState Newstate);
void TIM1_InternalClockConfig(void);
void TIM1_ETRClockMode1Config(u16 TIM1_ExtTRGPrescaler, u16 TIM1_ExtTRGPolarity, 
                             u16 ExtTRGFilter);
void TIM1_ETRClockMode2Config(u16 TIM1_ExtTRGPrescaler, u16 TIM1_ExtTRGPolarity,
                             u16 ExtTRGFilter);
void TIM1_ETRConfig(u16 TIM1_ExtTRGPrescaler, u16 TIM1_ExtTRGPolarity,
                    u16 ExtTRGFilter);
void TIM1_ITRxExternalClockConfig(u16 TIM1_InputTriggerSource);
void TIM1_TIxExternalClockConfig(u16 TIM1_TIxExternalCLKSource, u16 TIM1_ICPolarity, 
                                u8 ICFilter);
void TIM1_SelectInputTrigger(u16 TIM1_InputTriggerSource);
void TIM1_UpdateDisableConfig(FunctionalState Newstate);
void TIM1_UpdateRequestConfig(u8 TIM1_UpdateSource);
void TIM1_SelectHallSensor(FunctionalState Newstate);
void TIM1_SelectOnePulseMode(u16 TIM1_OPMode);
void TIM1_SelectOutputTrigger(u16 TIM1_TRGOSource);
void TIM1_SelectSlaveMode(u16 TIM1_SlaveMode);
void TIM1_SelectMasterSlaveMode(u16 TIM1_MasterSlaveMode);
void TIM1_EncoderInterfaceConfig(u16 TIM1_EncoderMode, u16 TIM1_IC1Polarity, 
                                u16 TIM1_IC2Polarity);
void TIM1_PrescalerConfig(u16 Prescaler, u16 TIM1_PSCReloadMode);
void TIM1_CounterModeConfig(u16 TIM1_CounterMode);
void TIM1_ForcedOC1Config(u16 TIM1_ForcedAction);
void TIM1_ForcedOC2Config(u16 TIM1_ForcedAction);
void TIM1_ForcedOC3Config(u16 TIM1_ForcedAction);
void TIM1_ForcedOC4Config(u16 TIM1_ForcedAction);
void TIM1_ARRPreloadConfig(FunctionalState Newstate);
void TIM1_SelectCOM(FunctionalState Newstate);
void TIM1_SelectCCDMA(FunctionalState Newstate);
void TIM1_CCPreloadControl(FunctionalState Newstate);
void TIM1_OC1PreloadConfig(u16 TIM1_OCPreload);
void TIM1_OC2PreloadConfig(u16 TIM1_OCPreload);
void TIM1_OC3PreloadConfig(u16 TIM1_OCPreload);
void TIM1_OC4PreloadConfig(u16 TIM1_OCPreload);
void TIM1_OC1FastConfig(u16 TIM1_OCFast);
void TIM1_OC2FastConfig(u16 TIM1_OCFast);
void TIM1_OC3FastConfig(u16 TIM1_OCFast);
void TIM1_OC4FastConfig(u16 TIM1_OCFast);
void TIM1_ClearOC1Ref(u16 TIM1_OCClear);
void TIM1_ClearOC2Ref(u16 TIM1_OCClear);
void TIM1_ClearOC3Ref(u16 TIM1_OCClear);
void TIM1_ClearOC4Ref(u16 TIM1_OCClear);
void TIM1_GenerateEvent(u16 TIM1_EventSource);
void TIM1_OC1PolarityConfig(u16 TIM1_OCPolarity);
void TIM1_OC1NPolarityConfig(u16 TIM1_OCNPolarity);
void TIM1_OC2PolarityConfig(u16 TIM1_OCPolarity);
void TIM1_OC2NPolarityConfig(u16 TIM1_OCNPolarity);
void TIM1_OC3PolarityConfig(u16 TIM1_OCPolarity);
void TIM1_OC3NPolarityConfig(u16 TIM1_OCNPolarity);
void TIM1_OC4PolarityConfig(u16 TIM1_OCPolarity);
void TIM1_CCxCmd(u16 TIM1_Channel, FunctionalState Newstate);
void TIM1_CCxNCmd(u16 TIM1_Channel, FunctionalState Newstate);
void TIM1_SelectOCxM(u16 TIM1_Channel, u16 TIM1_OCMode);
void TIM1_SetCounter(u16 Counter);
void TIM1_SetAutoreload(u16 Autoreload);
void TIM1_SetCompare1(u16 Compare1);
void TIM1_SetCompare2(u16 Compare2);
void TIM1_SetCompare3(u16 Compare3);
void TIM1_SetCompare4(u16 Compare4);
void TIM1_SetIC1Prescaler(u16 TIM1_IC1Prescaler);
void TIM1_SetIC2Prescaler(u16 TIM1_IC2Prescaler);
void TIM1_SetIC3Prescaler(u16 TIM1_IC3Prescaler);
void TIM1_SetIC4Prescaler(u16 TIM1_IC4Prescaler);
void TIM1_SetClockDivision(u16 TIM1_CKD);
u16 TIM1_GetCapture1(void);
u16 TIM1_GetCapture2(void);
u16 TIM1_GetCapture3(void);
u16 TIM1_GetCapture4(void);
u16 TIM1_GetCounter(void);
u16 TIM1_GetPrescaler(void);
FlagStatus TIM1_GetFlagStatus(u16 TIM1_FLAG); 
void TIM1_ClearFlag(u16 TIM1_Flag);
ITStatus TIM1_GetITStatus(u16 TIM1_IT);
void TIM1_ClearITPendingBit(u16 TIM1_IT);



 
#line 18 "lib\\src\\stm32f10x_tim1.c"
#line 1 ".\\lib\\inc\\stm32f10x_rcc.h"
















 

 



 
#line 25 ".\\lib\\inc\\stm32f10x_rcc.h"

 
typedef struct
{
  u32 SYSCLK_Frequency;
  u32 HCLK_Frequency;
  u32 PCLK1_Frequency;
  u32 PCLK2_Frequency;
  u32 ADCCLK_Frequency;
}RCC_ClocksTypeDef;

 
 







 








 
#line 70 ".\\lib\\inc\\stm32f10x_rcc.h"

#line 79 ".\\lib\\inc\\stm32f10x_rcc.h"

 








 
#line 99 ".\\lib\\inc\\stm32f10x_rcc.h"







 










 
#line 124 ".\\lib\\inc\\stm32f10x_rcc.h"







 






 








 







 








 
#line 172 ".\\lib\\inc\\stm32f10x_rcc.h"



 
#line 192 ".\\lib\\inc\\stm32f10x_rcc.h"



 
#line 217 ".\\lib\\inc\\stm32f10x_rcc.h"



 










 
#line 243 ".\\lib\\inc\\stm32f10x_rcc.h"

#line 250 ".\\lib\\inc\\stm32f10x_rcc.h"



 
 
void RCC_DeInit(void);
void RCC_HSEConfig(u32 RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(u8 HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(u32 RCC_PLLSource, u32 RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);
void RCC_SYSCLKConfig(u32 RCC_SYSCLKSource);
u8 RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(u32 RCC_SYSCLK);
void RCC_PCLK1Config(u32 RCC_HCLK);
void RCC_PCLK2Config(u32 RCC_HCLK);
void RCC_ITConfig(u8 RCC_IT, FunctionalState NewState);
void RCC_USBCLKConfig(u32 RCC_USBCLKSource);
void RCC_ADCCLKConfig(u32 RCC_PCLK2);
void RCC_LSEConfig(u8 RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(u32 RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(u32 RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(u32 RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(u32 RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphResetCmd(u32 RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(u32 RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(u8 RCC_MCO);
FlagStatus RCC_GetFlagStatus(u8 RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(u8 RCC_IT);
void RCC_ClearITPendingBit(u8 RCC_IT);



 
#line 19 "lib\\src\\stm32f10x_tim1.c"

 
 

 


 
 




 



 



 



 



 
 




 



 



 



 



 



 



 



 



 



 



 
 




 



 
 




 
 




 



 



 



 



 



 



 



 



 



 



 



 



 



 
 




 
 




 



 



 



 



 



 
 




 



 



 



 



 



 
 



 


 





 
#line 253 "lib\\src\\stm32f10x_tim1.c"

 



 


 
#line 268 "lib\\src\\stm32f10x_tim1.c"

 
 
 
static void TI1_Config(u16 TIM1_ICPolarity, u16 TIM1_ICSelection,
                       u8 TIM1_ICFilter);
static void TI2_Config(u16 TIM1_ICPolarity, u16 TIM1_ICSelection,
                       u8 TIM1_ICFilter);
static void TI3_Config(u16 TIM1_ICPolarity, u16 TIM1_ICSelection,
                       u8 TIM1_ICFilter);
static void TI4_Config(u16 TIM1_ICPolarity, u16 TIM1_ICSelection,
                       u8 TIM1_ICFilter);









 
void TIM1_DeInit(void)
{
  RCC_APB2PeriphResetCmd(((u32)0x00000800), ENABLE);
  RCC_APB2PeriphResetCmd(((u32)0x00000800), DISABLE);
}











 
void TIM1_TimeBaseInit(TIM1_TimeBaseInitTypeDef* TIM1_TimeBaseInitStruct)
{
  
  ((void)0);
  ((void)0);

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->ARR = TIM1_TimeBaseInitStruct->TIM1_Period ;

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->PSC = TIM1_TimeBaseInitStruct->TIM1_Prescaler;

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CR1 &= ((u16)0x00FF) & ((u16)0x039F);
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CR1 |= (u32)TIM1_TimeBaseInitStruct->TIM1_ClockDivision |
               TIM1_TimeBaseInitStruct->TIM1_CounterMode;

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->RCR = TIM1_TimeBaseInitStruct->TIM1_RepetitionCounter;
}










 
void TIM1_OC1Init(TIM1_OCInitTypeDef* TIM1_OCInitStruct)
{
  u16 tmpccmr = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0); 

  tmpccmr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x00 * 4)) = ((u16)0x0000);

   
   tmpccmr &= ((u16)0xFF00);

   
  tmpccmr |= TIM1_OCInitStruct->TIM1_OCMode;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = tmpccmr;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x00 * 4)) = TIM1_OCInitStruct->TIM1_OutputState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x02 * 4)) = TIM1_OCInitStruct->TIM1_OutputNState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x01 * 4)) = TIM1_OCInitStruct->TIM1_OCPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x03 * 4)) = TIM1_OCInitStruct->TIM1_OCNPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x08 * 4)) = TIM1_OCInitStruct->TIM1_OCIdleState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x09 * 4)) = TIM1_OCInitStruct->TIM1_OCNIdleState;

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR1 = TIM1_OCInitStruct->TIM1_Pulse;
}










 
void TIM1_OC2Init(TIM1_OCInitTypeDef* TIM1_OCInitStruct)
{
  u32 tmpccmr = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpccmr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x04 * 4)) = ((u16)0x0000);

   
   tmpccmr &= ((u16)0x00FF);

   
  tmpccmr |= (u32)TIM1_OCInitStruct->TIM1_OCMode << 8;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = (u16)tmpccmr;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x04 * 4)) = TIM1_OCInitStruct->TIM1_OutputState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x06 * 4)) = TIM1_OCInitStruct->TIM1_OutputNState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x05 * 4)) = TIM1_OCInitStruct->TIM1_OCPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x07 * 4)) = TIM1_OCInitStruct->TIM1_OCNPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x0A * 4)) = TIM1_OCInitStruct->TIM1_OCIdleState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x0B * 4)) = TIM1_OCInitStruct->TIM1_OCNIdleState;

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR2 = TIM1_OCInitStruct->TIM1_Pulse;
}










 
void TIM1_OC3Init(TIM1_OCInitTypeDef* TIM1_OCInitStruct)
{
  u16 tmpccmr = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpccmr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x08 * 4)) = ((u16)0x0000);

   
   tmpccmr &= ((u16)0xFF00);

   
  tmpccmr |= TIM1_OCInitStruct->TIM1_OCMode;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 = tmpccmr;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x08 * 4)) = TIM1_OCInitStruct->TIM1_OutputState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0A * 4)) = TIM1_OCInitStruct->TIM1_OutputNState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x09 * 4)) = TIM1_OCInitStruct->TIM1_OCPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0B * 4)) = TIM1_OCInitStruct->TIM1_OCNPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x0C * 4)) = TIM1_OCInitStruct->TIM1_OCIdleState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x0D * 4)) = TIM1_OCInitStruct->TIM1_OCNIdleState;

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR3 = TIM1_OCInitStruct->TIM1_Pulse;
}










 
void TIM1_OC4Init(TIM1_OCInitTypeDef* TIM1_OCInitStruct)
{
  u32 tmpccmr = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpccmr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0C * 4)) = ((u16)0x0000);

   
   tmpccmr &= ((u16)0x00FF);

   
  tmpccmr |= (u32)TIM1_OCInitStruct->TIM1_OCMode << 8;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 = (u16)tmpccmr;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0C * 4)) = TIM1_OCInitStruct->TIM1_OutputState;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0D * 4)) = TIM1_OCInitStruct->TIM1_OCPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x0E * 4)) = TIM1_OCInitStruct->TIM1_OCIdleState;

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR4 = TIM1_OCInitStruct->TIM1_Pulse;
}











 
void TIM1_BDTRConfig(TIM1_BDTRInitTypeDef *TIM1_BDTRInitStruct)
{
  u16 tmpbdtr = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  tmpbdtr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->BDTR;

  
 

  tmpbdtr = (u32)TIM1_BDTRInitStruct->TIM1_OSSRState | TIM1_BDTRInitStruct->TIM1_OSSIState |
             TIM1_BDTRInitStruct->TIM1_LOCKLevel | TIM1_BDTRInitStruct->TIM1_DeadTime |
			 TIM1_BDTRInitStruct->TIM1_Break | TIM1_BDTRInitStruct->TIM1_BreakPolarity |
             TIM1_BDTRInitStruct->TIM1_AutomaticOutput;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->BDTR = tmpbdtr;
}











 
void TIM1_ICInit(TIM1_ICInitTypeDef* TIM1_ICInitStruct)
{
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

  if (TIM1_ICInitStruct->TIM1_Channel == ((u16)0x0000))
  {
     
    TI1_Config(TIM1_ICInitStruct->TIM1_ICPolarity,
               TIM1_ICInitStruct->TIM1_ICSelection,
               TIM1_ICInitStruct->TIM1_ICFilter);

     
    TIM1_SetIC1Prescaler(TIM1_ICInitStruct->TIM1_ICPrescaler);
  }
  else if (TIM1_ICInitStruct->TIM1_Channel == ((u16)0x0001))
  {
     
    TI2_Config(TIM1_ICInitStruct->TIM1_ICPolarity,
               TIM1_ICInitStruct->TIM1_ICSelection,
               TIM1_ICInitStruct->TIM1_ICFilter);

     
    TIM1_SetIC2Prescaler(TIM1_ICInitStruct->TIM1_ICPrescaler);
  }
  else if (TIM1_ICInitStruct->TIM1_Channel == ((u16)0x0002))
  {
     
    TI3_Config(TIM1_ICInitStruct->TIM1_ICPolarity,
               TIM1_ICInitStruct->TIM1_ICSelection,
               TIM1_ICInitStruct->TIM1_ICFilter);

     
    TIM1_SetIC3Prescaler(TIM1_ICInitStruct->TIM1_ICPrescaler);
  }
  else
  {
     
    TI4_Config(TIM1_ICInitStruct->TIM1_ICPolarity,
               TIM1_ICInitStruct->TIM1_ICSelection,
               TIM1_ICInitStruct->TIM1_ICFilter);

     
    TIM1_SetIC4Prescaler(TIM1_ICInitStruct->TIM1_ICPrescaler);
  }
}











 
void TIM1_PWMIConfig(TIM1_ICInitTypeDef* TIM1_ICInitStruct)
{
  u8 ICPolarity = ((u16)0x0000);
  u8 ICSelection = ((u16)0x0001);

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

   
  if (TIM1_ICInitStruct->TIM1_ICPolarity == ((u16)0x0000))
  {
    ICPolarity = ((u16)0x0001);
  }
  else
  {
    ICPolarity = ((u16)0x0000);
  }

   
  if (TIM1_ICInitStruct->TIM1_ICSelection == ((u16)0x0001))
  {
    ICSelection = ((u16)0x0002);
  }
  else
  {
    ICSelection = ((u16)0x0001);
  }

  if (TIM1_ICInitStruct->TIM1_Channel == ((u16)0x0000))
  {
     
    TI1_Config(TIM1_ICInitStruct->TIM1_ICPolarity, TIM1_ICInitStruct->TIM1_ICSelection,
               TIM1_ICInitStruct->TIM1_ICFilter);

     
    TIM1_SetIC1Prescaler(TIM1_ICInitStruct->TIM1_ICPrescaler);

     
    TI2_Config(ICPolarity, ICSelection, TIM1_ICInitStruct->TIM1_ICFilter);

     
    TIM1_SetIC2Prescaler(TIM1_ICInitStruct->TIM1_ICPrescaler);
  }
  else
  {	 
     
    TI2_Config(TIM1_ICInitStruct->TIM1_ICPolarity, TIM1_ICInitStruct->TIM1_ICSelection,
               TIM1_ICInitStruct->TIM1_ICFilter);

     
    TIM1_SetIC2Prescaler(TIM1_ICInitStruct->TIM1_ICPrescaler);

     
    TI1_Config(ICPolarity, ICSelection, TIM1_ICInitStruct->TIM1_ICFilter);

     
    TIM1_SetIC1Prescaler(TIM1_ICInitStruct->TIM1_ICPrescaler);
  }
}








 
void TIM1_OCStructInit(TIM1_OCInitTypeDef* TIM1_OCInitStruct)
{
   
  TIM1_OCInitStruct->TIM1_OCMode = ((u16)0x0000);
  TIM1_OCInitStruct->TIM1_OutputState = ((u16)0x0000);
  TIM1_OCInitStruct->TIM1_OutputNState = ((u16)0x0000);
  TIM1_OCInitStruct->TIM1_Pulse = ((u16)0x0000);
  TIM1_OCInitStruct->TIM1_OCPolarity = ((u16)0x0000);
  TIM1_OCInitStruct->TIM1_OCNPolarity = ((u16)0x0000);
  TIM1_OCInitStruct->TIM1_OCIdleState = ((u16)0x0000);
  TIM1_OCInitStruct->TIM1_OCNIdleState = ((u16)0x0000);
}









 
void TIM1_ICStructInit(TIM1_ICInitTypeDef* TIM1_ICInitStruct)
{
   
  TIM1_ICInitStruct->TIM1_Channel = ((u16)0x0000);
  TIM1_ICInitStruct->TIM1_ICSelection = ((u16)0x0001);
  TIM1_ICInitStruct->TIM1_ICPolarity = ((u16)0x0000);
  TIM1_ICInitStruct->TIM1_ICPrescaler = ((u16)0x0000);
  TIM1_ICInitStruct->TIM1_ICFilter = ((u8)0x00);
}









 
void TIM1_TimeBaseStructInit(TIM1_TimeBaseInitTypeDef* TIM1_TimeBaseInitStruct)
{
   
  TIM1_TimeBaseInitStruct->TIM1_Period = ((u16)0xFFFF);
  TIM1_TimeBaseInitStruct->TIM1_Prescaler = ((u16)0x0000);
  TIM1_TimeBaseInitStruct->TIM1_ClockDivision = ((u16)0x0000);
  TIM1_TimeBaseInitStruct->TIM1_CounterMode = ((u16)0x0000);
  TIM1_TimeBaseInitStruct->TIM1_RepetitionCounter = ((u16)0x0000);
}









 
void TIM1_BDTRStructInit(TIM1_BDTRInitTypeDef* TIM1_BDTRInitStruct)
{
   
  TIM1_BDTRInitStruct->TIM1_OSSRState = ((u16)0x0000);
  TIM1_BDTRInitStruct->TIM1_OSSIState = ((u16)0x0000);
  TIM1_BDTRInitStruct->TIM1_LOCKLevel = ((u16)0x0000);
  TIM1_BDTRInitStruct->TIM1_DeadTime = ((u16)0x0000);
  TIM1_BDTRInitStruct->TIM1_Break = ((u16)0x0000);
  TIM1_BDTRInitStruct->TIM1_BreakPolarity = ((u16)0x0000);
  TIM1_BDTRInitStruct->TIM1_AutomaticOutput = ((u16)0x0000);
}









 
void TIM1_Cmd(FunctionalState NewState)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x00) * 32) + (0x00 * 4)) = (u16)NewState;
}









 
void TIM1_CtrlPWMOutputs(FunctionalState Newstate)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x44) * 32) + (0x0F * 4)) = (u16)Newstate;
}





















 
void TIM1_ITConfig(u16 TIM1_IT, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState == ENABLE)
  {
     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->DIER |= TIM1_IT;
  }
  else
  {
     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->DIER &= (u16)~TIM1_IT;
  }
}



















 
void TIM1_DMAConfig(u16 TIM1_DMABase, u16 TIM1_DMABurstLength)
{
  u32 tmpdcr = 0;

   
  ((void)0);
  ((void)0);

  tmpdcr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->DCR;

   
  tmpdcr &= ((u16)0x0000);

   
  tmpdcr |= TIM1_DMABase | TIM1_DMABurstLength;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->DCR = (u16)tmpdcr;
}



















 
void TIM1_DMACmd(u16 TIM1_DMASource, FunctionalState Newstate)
{
  u32 tmpdier = 0;

   
  ((void)0);
  ((void)0);

  tmpdier = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->DIER;

  if (Newstate == ENABLE)
  {
     
    tmpdier |= TIM1_DMASource;
  }
  else
  {
     
    tmpdier &= (u16)~TIM1_DMASource;
  }
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->DIER = (u16)tmpdier;
}








 
void TIM1_InternalClockConfig(void)
{
   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR &=  ((u16)0xFFF0);
}


















 
void TIM1_ETRClockMode1Config(u16 TIM1_ExtTRGPrescaler, u16 TIM1_ExtTRGPolarity,
                             u16 ExtTRGFilter)
{
   
  ((void)0);
  ((void)0);

   
  TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR &= ((u16)0xFFF0);
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR |= ((u16)0x0007);
  
   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR &= ((u16)0xFF87);
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR |= ((u16)0x0070);
}



















 
void TIM1_ETRClockMode2Config(u16 TIM1_ExtTRGPrescaler, u16 TIM1_ExtTRGPolarity,
                             u16 ExtTRGFilter)
{
   
  ((void)0);
  ((void)0);

   
  TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x08) * 32) + (0x0E * 4)) = ((u16)0x0001);
}



















 
void TIM1_ETRConfig(u16 TIM1_ExtTRGPrescaler, u16 TIM1_ExtTRGPolarity,
                    u16 ExtTRGFilter)
{
  u32 tmpsmcr = 0;

  tmpsmcr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR;

   
  tmpsmcr &= ((u16)0x40F7);
  tmpsmcr |= TIM1_ExtTRGPrescaler | TIM1_ExtTRGPolarity | (u16)((u16)ExtTRGFilter << 8);

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR = (u16)tmpsmcr;
}













 
void TIM1_ITRxExternalClockConfig(u16 TIM1_InputTriggerSource)
{
   
  ((void)0);
  
   
  TIM1_SelectInputTrigger(TIM1_InputTriggerSource);

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR |= ((u16)0x0007);
}


















 
void TIM1_TIxExternalClockConfig(u16 TIM1_TIxExternalCLKSource,
                                u16 TIM1_ICPolarity, u8 ICFilter)
{
   
  ((void)0);
  ((void)0);
  ((void)0);

   
  if (TIM1_TIxExternalCLKSource == ((u16)0x0060))
  {
    TI2_Config(TIM1_ICPolarity, ((u16)0x0001), ICFilter);
  }
  else
  {
    TI1_Config(TIM1_ICPolarity, ((u16)0x0001), ICFilter);
  }

   
  TIM1_SelectInputTrigger(TIM1_TIxExternalCLKSource);

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR |= ((u16)0x0007);
}
















 
void TIM1_SelectInputTrigger(u16 TIM1_InputTriggerSource)
{
  u32 tmpsmcr = 0;

   
  ((void)0);

  tmpsmcr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR;

   
  tmpsmcr &= ((u16)0xFF87);
  tmpsmcr |= TIM1_InputTriggerSource;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR = (u16)tmpsmcr;
}









 
void TIM1_UpdateDisableConfig(FunctionalState Newstate)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x00) * 32) + (0x01 * 4)) = (u16)Newstate;
}











 
void TIM1_UpdateRequestConfig(u8 TIM1_UpdateSource)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x00) * 32) + (0x02 * 4)) = TIM1_UpdateSource;
}








 
void TIM1_SelectHallSensor(FunctionalState Newstate)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x07 * 4)) = (u16)Newstate;
}











 
void TIM1_SelectOnePulseMode(u16 TIM1_OPMode)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x00) * 32) + (0x03 * 4)) = TIM1_OPMode;
}

















 
void TIM1_SelectOutputTrigger(u16 TIM1_TRGOSource)
{
  u32 tmpcr2 = 0;

   
  ((void)0);

  tmpcr2 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CR2;

   
  tmpcr2 &= ((u16)0x0080);

   
  tmpcr2 |=  TIM1_TRGOSource;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CR2 = (u16)tmpcr2;
}













 
void TIM1_SelectSlaveMode(u16 TIM1_SlaveMode)
{
  u32 tmpsmcr = 0;

   
  ((void)0);

  tmpsmcr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR;

   
  tmpsmcr &= ((u16)0xFFF0);

   
  tmpsmcr |= TIM1_SlaveMode;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR = (u16)tmpsmcr;
}












 
void TIM1_SelectMasterSlaveMode(u16 TIM1_MasterSlaveMode)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x08) * 32) + (0x07 * 4)) = TIM1_MasterSlaveMode;
}























 
void TIM1_EncoderInterfaceConfig(u16 TIM1_EncoderMode, u16 TIM1_IC1Polarity,
                                u16 TIM1_IC2Polarity)
{
  u32 tmpsmcr = 0;
  u32 tmpccmr1 = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);

  tmpsmcr = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR;
  tmpccmr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  tmpsmcr &= ((u16)0xFFF0);
  tmpsmcr |= TIM1_EncoderMode;

   
  tmpccmr1 &= ((u16)0xFFFC) & ((u16)0xFCFF);
  tmpccmr1 |= ((u16)0x0001) | ((u16)0x0100);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x01 * 4)) = TIM1_IC1Polarity;
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x05 * 4)) = TIM1_IC2Polarity;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SMCR = (u16)tmpsmcr;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = (u16)tmpccmr1;
}














 
void TIM1_PrescalerConfig(u16 Prescaler, u16 TIM1_PSCReloadMode)
{
   
  ((void)0);

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->PSC = Prescaler;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x14) * 32) + (0x00 * 4)) = TIM1_PSCReloadMode;
}













 
void TIM1_CounterModeConfig(u16 TIM1_CounterMode)
{
  u32 tmpcr1 = 0;

   
  ((void)0);

  tmpcr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CR1;

   
  tmpcr1 &= ((u16)0x039F);

   
  tmpcr1 |= TIM1_CounterMode;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CR1 = (u16)tmpcr1;
}














 
void TIM1_ForcedOC1Config(u16 TIM1_ForcedAction)
{
  u32 tmpccmr1 = 0;

   
  ((void)0);

  tmpccmr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  tmpccmr1 &= ((u16)0x7F0F);

   
  tmpccmr1 |= TIM1_ForcedAction;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = (u16)tmpccmr1;
}














 
void TIM1_ForcedOC2Config(u16 TIM1_ForcedAction)
{
  u32 tmpccmr1 = 0;

   
  ((void)0);

  tmpccmr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  tmpccmr1 &= ((u16)0x0F7F);

   
  tmpccmr1 |= (u32)TIM1_ForcedAction << 8;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = (u16)tmpccmr1;
}














 
void TIM1_ForcedOC3Config(u16 TIM1_ForcedAction)
{
  u32 tmpccmr2 = 0;

   
  ((void)0);

  tmpccmr2 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2;

   
  tmpccmr2 &= ((u16)0x7F0F);

   
  tmpccmr2 |= TIM1_ForcedAction;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 = (u16)tmpccmr2;
}














 
void TIM1_ForcedOC4Config(u16 TIM1_ForcedAction)
{
  u32 tmpccmr2 = 0;

   
  ((void)0);

  tmpccmr2 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  tmpccmr2 &= ((u16)0x0F7F);

   
  tmpccmr2 |= (u16)((u16)TIM1_ForcedAction << 8);

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 = (u16)tmpccmr2;
}









 
void TIM1_ARRPreloadConfig(FunctionalState Newstate)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x00) * 32) + (0x07 * 4)) = (u16)Newstate;
}









 
void TIM1_SelectCOM(FunctionalState Newstate)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x02 * 4)) = (u16)Newstate;
}









 
void TIM1_SelectCCDMA(FunctionalState Newstate)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x03 * 4)) = (u16)Newstate;
}










 
void TIM1_CCPreloadControl(FunctionalState Newstate)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x04) * 32) + (0x00 * 4)) = (u16)Newstate;
}












 
void TIM1_OC1PreloadConfig(u16 TIM1_OCPreload)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x18) * 32) + (0x03 * 4)) = (u16)TIM1_OCPreload;
}












 
void TIM1_OC2PreloadConfig(u16 TIM1_OCPreload)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x18) * 32) + (0x0B * 4)) = (u16)TIM1_OCPreload;
}












 
void TIM1_OC3PreloadConfig(u16 TIM1_OCPreload)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x1C) * 32) + (0x03 * 4)) = (u16)TIM1_OCPreload;
}












 
void TIM1_OC4PreloadConfig(u16 TIM1_OCPreload)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x1C) * 32) + (0x0B * 4)) = (u16)TIM1_OCPreload;
}











 
void TIM1_OC1FastConfig(u16 TIM1_OCFast)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x18) * 32) + (0x02 * 4)) = (u16)TIM1_OCFast;
}











 
void TIM1_OC2FastConfig(u16 TIM1_OCFast)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x18) * 32) + (0x0A * 4)) = (u16)TIM1_OCFast;
}











 
void TIM1_OC3FastConfig(u16 TIM1_OCFast)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x1C) * 32) + (0x02 * 4)) = (u16)TIM1_OCFast;
}











 
void TIM1_OC4FastConfig(u16 TIM1_OCFast)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x1C) * 32) + (0x0A * 4)) = (u16)TIM1_OCFast;
}











 
void TIM1_ClearOC1Ref(u16 TIM1_OCClear)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x18) * 32) + (0x07 * 4)) = (u16)TIM1_OCClear;
}











 
void TIM1_ClearOC2Ref(u16 TIM1_OCClear)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x18) * 32) + (0x0F * 4)) = (u16)TIM1_OCClear;
}











 
void TIM1_ClearOC3Ref(u16 TIM1_OCClear)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x1C) * 32) + (0x07 * 4)) = (u16)TIM1_OCClear;
}











 
void TIM1_ClearOC4Ref(u16 TIM1_OCClear)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x1C) * 32) + (0x0F * 4)) = (u16)TIM1_OCClear;
}

















 
void TIM1_GenerateEvent(u16 TIM1_EventSource)
{
   
  ((void)0);

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->EGR |= TIM1_EventSource;
}











 
void TIM1_OC1PolarityConfig(u16 TIM1_OCPolarity)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x01 * 4)) = (u16)TIM1_OCPolarity;
}











 
void TIM1_OC1NPolarityConfig(u16 TIM1_OCNPolarity)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x03 * 4)) = (u16)TIM1_OCNPolarity;
}











 
void TIM1_OC2PolarityConfig(u16 TIM1_OCPolarity)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x05 * 4)) = (u16)TIM1_OCPolarity;
}











 
void TIM1_OC2NPolarityConfig(u16 TIM1_OCNPolarity)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x07 * 4)) = (u16)TIM1_OCNPolarity;
}











 
void TIM1_OC3PolarityConfig(u16 TIM1_OCPolarity)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x09 * 4)) = (u16)TIM1_OCPolarity;
}











 
void TIM1_OC3NPolarityConfig(u16 TIM1_OCNPolarity)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0B * 4)) = (u16)TIM1_OCNPolarity;
}











 
void TIM1_OC4PolarityConfig(u16 TIM1_OCPolarity)
{
   
  ((void)0);

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0D * 4)) = (u16)TIM1_OCPolarity;
}















 
void TIM1_CCxCmd(u16 TIM1_Channel, FunctionalState Newstate)
{
   
  ((void)0);
  ((void)0);

  if(TIM1_Channel == ((u16)0x0000))
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x00 * 4)) = (u16)Newstate;  
  }
  else if(TIM1_Channel == ((u16)0x0001))
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x04 * 4)) = (u16)Newstate;
  }
  else if(TIM1_Channel == ((u16)0x0002))
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x08 * 4)) = (u16)Newstate;
  }
  else
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0C * 4)) = (u16)Newstate;
  }
}














 
void TIM1_CCxNCmd(u16 TIM1_Channel, FunctionalState Newstate)
{
   
  ((void)0);
  ((void)0);

  if(TIM1_Channel == ((u16)0x0000))
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x02 * 4)) = (u16)Newstate;  
  }
  else if(TIM1_Channel == ((u16)0x0001))
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x06 * 4)) = (u16)Newstate;
  }
  else 
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0A * 4)) = (u16)Newstate;
  }
}



























 
void TIM1_SelectOCxM(u16 TIM1_Channel, u16 TIM1_OCMode)
{
   
  ((void)0);
  ((void)0);

  if(TIM1_Channel == ((u16)0x0000))
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x00 * 4)) = ((u16)0x0000);

     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 &= ((u16)0xFF00);

     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 |= TIM1_OCMode;
  }
  else if(TIM1_Channel == ((u16)0x0001))
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x04 * 4)) = ((u16)0x0000);

     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 &= ((u16)0x00FF);

     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 |= (u16)((u16)TIM1_OCMode << 8);
  }
  else if(TIM1_Channel == ((u16)0x0002))
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x08 * 4)) = ((u16)0x0000);

     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 &= ((u16)0xFF00);

     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 |= TIM1_OCMode;
  }
  else
  {
     
    *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0C * 4)) = ((u16)0x0000);

     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 &= ((u16)0x00FF);

     
    ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 |= (u16)((u16)TIM1_OCMode << 8);
  }
}








 
void TIM1_SetCounter(u16 Counter)
{
   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CNT = Counter;
}








 
void TIM1_SetAutoreload(u16 Autoreload)
{
   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->ARR = Autoreload;
}








 
void TIM1_SetCompare1(u16 Compare1)
{
   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR1 = Compare1;
}








 
void TIM1_SetCompare2(u16 Compare2)
{
   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR2 = Compare2;
}








 
void TIM1_SetCompare3(u16 Compare3)
{
   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR3 = Compare3;
}








 
void TIM1_SetCompare4(u16 Compare4)
{
   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR4 = Compare4;
}














 
void TIM1_SetIC1Prescaler(u16 TIM1_IC1Prescaler)
{
  u32 tmpccmr1 = 0;
  
   
  ((void)0);

  tmpccmr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  tmpccmr1 &= ((u16)0xFFF3);

   
  tmpccmr1 |= TIM1_IC1Prescaler;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = (u16)tmpccmr1;
}














 
void TIM1_SetIC2Prescaler(u16 TIM1_IC2Prescaler)
{
  u32 tmpccmr1 = 0;

   
  ((void)0);

  tmpccmr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  tmpccmr1 &= ((u16)0xF3FF);

   
  tmpccmr1 |= (u16)((u16)TIM1_IC2Prescaler << 8);

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = (u16)tmpccmr1;
}














 
void TIM1_SetIC3Prescaler(u16 TIM1_IC3Prescaler)
{
  u32 tmpccmr2 = 0;

   
  ((void)0);

  tmpccmr2 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2;

   
  tmpccmr2 &= ((u16)0xFFF3);

   
  tmpccmr2 |= TIM1_IC3Prescaler;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 = (u16)tmpccmr2;
}














 
void TIM1_SetIC4Prescaler(u16 TIM1_IC4Prescaler)
{
  u32 tmpccmr2 = 0;

   
  ((void)0);

  tmpccmr2 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2;

   
  tmpccmr2 &= ((u16)0xF3FF);

   
  tmpccmr2 |= (u16)((u16)TIM1_IC4Prescaler << 8);

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 = (u16)tmpccmr2;
}












 
void TIM1_SetClockDivision(u16 TIM1_CKD)
{
  u32 tmpcr1 = 0;

   
  ((void)0);

  tmpcr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CR1;

   
  tmpcr1 &= ((u16)0x00FF);

   
  tmpcr1 |= TIM1_CKD;

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CR1 = (u16)tmpcr1;
}








 
u16 TIM1_GetCapture1(void)
{
   
  return ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR1;
}








 
u16 TIM1_GetCapture2(void)
{
   
  return ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR2;
}








 
u16 TIM1_GetCapture3(void)
{
   
  return ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR3;
}








 
u16 TIM1_GetCapture4(void)
{
   
  return ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCR4;
}








 
u16 TIM1_GetCounter(void)
{
   
  return ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CNT;
}








 
u16 TIM1_GetPrescaler(void)
{
   
  return ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->PSC;
}





















 
FlagStatus TIM1_GetFlagStatus(u16 TIM1_FLAG)
{
  FlagStatus bitstatus = RESET;

   
  ((void)0);

  if ((((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SR & TIM1_FLAG) != (u16)RESET )
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}





















 
void TIM1_ClearFlag(u16 TIM1_FLAG)
{
   
  ((void)0);

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SR &= (u16)~TIM1_FLAG;
}


















 
ITStatus TIM1_GetITStatus(u16 TIM1_IT)
{
  ITStatus bitstatus = RESET;
  
  u16 TIM1_itStatus = 0x0, TIM1_itEnable = 0x0;

   
  ((void)0);
  
  TIM1_itStatus = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SR & TIM1_IT;
  
  TIM1_itEnable = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->DIER & TIM1_IT;

  if ((TIM1_itStatus != (u16)RESET ) && (TIM1_itEnable != (u16)RESET ))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}


















 
void TIM1_ClearITPendingBit(u16 TIM1_IT)
{
   
  ((void)0);

   
  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->SR &= (u16)~TIM1_IT;
}





















 
static void TI1_Config(u16 TIM1_ICPolarity, u16 TIM1_ICSelection,
                       u8 TIM1_ICFilter)
{
  u32 tmpccmr1 = 0;

  tmpccmr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x00 * 4)) = ((u16)0x0000);

   
  tmpccmr1 &= ((u16)0xFFFC) & ((u16)0xFF0F);
  tmpccmr1 |= (u16)TIM1_ICSelection | (u16)((u16)TIM1_ICFilter << 4);

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = (u16)tmpccmr1;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x01 * 4)) = TIM1_ICPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x00 * 4)) = ((u16)0x0001);
}





















 
static void TI2_Config(u16 TIM1_ICPolarity, u16 TIM1_ICSelection,
                       u8 TIM1_ICFilter)
{
  u32 tmpccmr1 = 0;

  tmpccmr1 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x04 * 4)) = ((u16)0x0000);

   
  tmpccmr1 &= ((u16)0xFCFF) & ((u16)0x0FFF);
  tmpccmr1 |= (u16)((u16)TIM1_ICSelection << 8) | (u16)((u16)TIM1_ICFilter <<12);

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR1 = (u16)tmpccmr1;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x05 * 4)) = TIM1_ICPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x04 * 4)) = ((u16)0x0001);

}





















 
static void TI3_Config(u16 TIM1_ICPolarity, u16 TIM1_ICSelection,
                       u8 TIM1_ICFilter)
{
  u32 tmpccmr2 = 0;

  tmpccmr2 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x08 * 4)) = ((u16)0x0000);

   
  tmpccmr2 &= ((u16)0xFFFC) & ((u16)0xFF0F);
  tmpccmr2 |= (u16)TIM1_ICSelection | (u16)((u16)TIM1_ICFilter << 4);

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 = (u16)tmpccmr2;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x09 * 4)) = TIM1_ICPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x08 * 4)) = ((u16)0x0001);
}





















 
static void TI4_Config(u16 TIM1_ICPolarity, u16 TIM1_ICSelection,
                       u8 TIM1_ICFilter)
{
  u32 tmpccmr2 = 0;

  tmpccmr2 = ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2;
  
   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0C * 4)) = ((u16)0x0000);

   
  tmpccmr2 &= ((u16)0xFCFF) & ((u16)0x0FFF);
  tmpccmr2 |= (u16)((u16)TIM1_ICSelection << 8) | (u16)((u16)TIM1_ICFilter << 12);

  ((TIM1_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2C00))->CCMR2 = (u16)tmpccmr2;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0D * 4)) = TIM1_ICPolarity;

   
  *(vu32 *) (((u32)0x42000000) + (((((((u32)0x40000000) + 0x10000) + 0x2C00) - ((u32)0x40000000)) + 0x20) * 32) + (0x0C * 4)) = ((u16)0x0001);
}
 
