#line 1 "lib\\src\\stm32f10x_adc.c"















 

 
#line 1 ".\\lib\\inc\\stm32f10x_adc.h"
















 

 



 
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

 
 
 



 
#line 25 ".\\lib\\inc\\stm32f10x_adc.h"

 
 
typedef struct
{
  u32 ADC_Mode;	 
  FunctionalState ADC_ScanConvMode; 
  FunctionalState ADC_ContinuousConvMode; 
  u32 ADC_ExternalTrigConv;	 
  u32 ADC_DataAlign;	
  u8 ADC_NbrOfChannel;	
}ADC_InitTypeDef;

 



                                 



 
#line 57 ".\\lib\\inc\\stm32f10x_adc.h"

#line 68 ".\\lib\\inc\\stm32f10x_adc.h"

 
 
#line 77 ".\\lib\\inc\\stm32f10x_adc.h"
 


 
#line 87 ".\\lib\\inc\\stm32f10x_adc.h"

#line 102 ".\\lib\\inc\\stm32f10x_adc.h"

 






 
#line 129 ".\\lib\\inc\\stm32f10x_adc.h"

#line 139 ".\\lib\\inc\\stm32f10x_adc.h"

 
#line 149 ".\\lib\\inc\\stm32f10x_adc.h"

#line 158 ".\\lib\\inc\\stm32f10x_adc.h"

 
 





 



 






#line 190 ".\\lib\\inc\\stm32f10x_adc.h"

 










 
#line 210 ".\\lib\\inc\\stm32f10x_adc.h"

#line 218 ".\\lib\\inc\\stm32f10x_adc.h"

 








 











 


 


 


 


 


 


 


 
 
void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ITConfig(ADC_TypeDef* ADCx, u16 ADC_IT, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, u8 Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel, u8 Rank, u8 ADC_SampleTime);
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
u16 ADC_GetConversionValue(ADC_TypeDef* ADCx);
u32 ADC_GetDualModeConversionValue(void);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, u32 ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel, u8 Rank, u8 ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, u8 Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, u8 ADC_InjectedChannel, u16 Offset);
u16 ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, u8 ADC_InjectedChannel);
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, u32 ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, u16 HighThreshold, u16 LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel);
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, u8 ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, u8 ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, u16 ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, u16 ADC_IT);



 
#line 20 "lib\\src\\stm32f10x_adc.c"
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



 
#line 21 "lib\\src\\stm32f10x_adc.c"

 
 
 


 



 



 



 


 


 


 



 



 


 


 


 



 



 


 



 


 



 



 


 




 


 


 



 



 


 


 
 
 
 









 
void ADC_DeInit(ADC_TypeDef* ADCx)
{
   
  ((void)0);

  switch (*(u32*)&ADCx)
  {
    case ((((u32)0x40000000) + 0x10000) + 0x2400):
       
      RCC_APB2PeriphResetCmd(((u32)0x00000200), ENABLE);
       
      RCC_APB2PeriphResetCmd(((u32)0x00000200), DISABLE);
      break;
    
    case ((((u32)0x40000000) + 0x10000) + 0x2800):
       
      RCC_APB2PeriphResetCmd(((u32)0x00000400), ENABLE);
       
      RCC_APB2PeriphResetCmd(((u32)0x00000400), DISABLE);
      break;
      
    case ((((u32)0x40000000) + 0x10000) + 0x3C00):
       
      RCC_APB2PeriphResetCmd(((u32)0x00008000), ENABLE);
       
      RCC_APB2PeriphResetCmd(((u32)0x00008000), DISABLE);
      break; 

    default:
      break;
  }
}












 
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct)
{
  u32 tmpreg1 = 0;
  u8 tmpreg2 = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);  		    
  ((void)0);   
  ((void)0); 
  ((void)0);

   
   
  tmpreg1 = ADCx->CR1;
   
  tmpreg1 &= ((u32)0xFFF0FEFF);
   
   
   
  tmpreg1 |= (u32)(ADC_InitStruct->ADC_Mode | ((u32)ADC_InitStruct->ADC_ScanConvMode << 8));
   
  ADCx->CR1 = tmpreg1;

   
   
  tmpreg1 = ADCx->CR2;
   
  tmpreg1 &= ((u32)0xFFF1F7FD);
   
   
   
   
  tmpreg1 |= (u32)(ADC_InitStruct->ADC_DataAlign | ADC_InitStruct->ADC_ExternalTrigConv |
            ((u32)ADC_InitStruct->ADC_ContinuousConvMode << 1));
   
  ADCx->CR2 = tmpreg1;

   
   
  tmpreg1 = ADCx->SQR1;
   
  tmpreg1 &= ((u32)0xFF0FFFFF);
   
   
  tmpreg2 |= (ADC_InitStruct->ADC_NbrOfChannel - 1);
  tmpreg1 |= ((u32)tmpreg2 << 20);
   
  ADCx->SQR1 = tmpreg1;
}









 
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct)
{
   
   
  ADC_InitStruct->ADC_Mode = ((u32)0x00000000);

   
  ADC_InitStruct->ADC_ScanConvMode = DISABLE;

   
  ADC_InitStruct->ADC_ContinuousConvMode = DISABLE;

   
  ADC_InitStruct->ADC_ExternalTrigConv = ((u32)0x00000000);

   
  ADC_InitStruct->ADC_DataAlign = ((u32)0x00000000);

   
  ADC_InitStruct->ADC_NbrOfChannel = 1;
}










 
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CR2 |= ((u32)0x00000001);
  }
  else
  {
     
    ADCx->CR2 &= ((u32)0xFFFFFFFE);
  }
}











 
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CR2 |= ((u32)0x00000100);
  }
  else
  {
     
    ADCx->CR2 &= ((u32)0xFFFFFEFF);
  }
}
















 
void ADC_ITConfig(ADC_TypeDef* ADCx, u16 ADC_IT, FunctionalState NewState)
{
  u8 itmask = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);

   
  itmask = (u8)ADC_IT;

  if (NewState != DISABLE)
  {
     
    ADCx->CR1 |= itmask;
  }
  else
  {
     
    ADCx->CR1 &= (~(u32)itmask);
  }
}








 
void ADC_ResetCalibration(ADC_TypeDef* ADCx)
{
   
  ((void)0);

     
  ADCx->CR2 |= ((u32)0x00000008);
}








 
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;

   
  ((void)0);

   
  if ((ADCx->CR2 & ((u32)0x00000008)) != (u32)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }

   
  return  bitstatus;
}








 
void ADC_StartCalibration(ADC_TypeDef* ADCx)
{
   
  ((void)0);

     
  ADCx->CR2 |= ((u32)0x00000004);
}








 
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;

   
  ((void)0);

   
  if ((ADCx->CR2 & ((u32)0x00000004)) != (u32)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }

   
  return  bitstatus;
}










 
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
    
 
    ADCx->CR2 |= ((u32)0x00500000);
  }
  else
  {
    
 
    ADCx->CR2 &= ((u32)0xFFAFFFFF);
  }
}








 
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;

   
  ((void)0);

   
  if ((ADCx->CR2 & ((u32)0x00400000)) != (u32)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }

   
  return  bitstatus;
}











 
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, u8 Number)
{
  u32 tmpreg1 = 0;
  u32 tmpreg2 = 0;

   
  ((void)0);
  ((void)0);

   
  tmpreg1 = ADCx->CR1;
   
  tmpreg1 &= ((u32)0xFFFF1FFF);
   
  tmpreg2 = Number - 1;
  tmpreg1 |= tmpreg2 << 13;
   
  ADCx->CR1 = tmpreg1;
}












 
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CR1 |= ((u32)0x00000800);
  }
  else
  {
     
    ADCx->CR1 &= ((u32)0xFFFFF7FF);
  }
}










































 
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel, u8 Rank, u8 ADC_SampleTime)
{
  u32 tmpreg1 = 0, tmpreg2 = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

   
  if (ADC_Channel > ((u8)0x09))
  {
     
    tmpreg1 = ADCx->SMPR1;
     
    tmpreg2 = ((u32)0x00000007) << (3 * (ADC_Channel - 10));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (u32)ADC_SampleTime << (3 * (ADC_Channel - 10));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SMPR1 = tmpreg1;
  }
  else  
  {
     
    tmpreg1 = ADCx->SMPR2;
     
    tmpreg2 = ((u32)0x00000007) << (3 * ADC_Channel);
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (u32)ADC_SampleTime << (3 * ADC_Channel);
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SMPR2 = tmpreg1;
  }
   
  if (Rank < 7)
  {
     
    tmpreg1 = ADCx->SQR3;
     
    tmpreg2 = ((u32)0x0000001F) << (5 * (Rank - 1));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (u32)ADC_Channel << (5 * (Rank - 1));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SQR3 = tmpreg1;
  }
   
  else if (Rank < 13)
  {
     
    tmpreg1 = ADCx->SQR2;
     
    tmpreg2 = ((u32)0x0000001F) << (5 * (Rank - 7));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (u32)ADC_Channel << (5 * (Rank - 7));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SQR2 = tmpreg1;
  }
   
  else
  {
     
    tmpreg1 = ADCx->SQR1;
     
    tmpreg2 = ((u32)0x0000001F) << (5 * (Rank - 13));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (u32)ADC_Channel << (5 * (Rank - 13));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SQR1 = tmpreg1;
  }
}











 
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CR2 |= ((u32)0x00100000);
  }
  else
  {
     
    ADCx->CR2 &= ((u32)0xFFEFFFFF);
  }
}








 
u16 ADC_GetConversionValue(ADC_TypeDef* ADCx)
{
   
  ((void)0);

   
  return (u16) ADCx->DR;
}







 
u32 ADC_GetDualModeConversionValue(void)
{
   
  return (*(vu32 *) ((u32)0x4001244C));
}












 
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CR1 |= ((u32)0x00000400);
  }
  else
  {
     
    ADCx->CR1 &= ((u32)0xFFFFFBFF);
  }
}












 
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CR1 |= ((u32)0x00001000);
  }
  else
  {
     
    ADCx->CR1 &= ((u32)0xFFFFEFFF);
  }
}







































 
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, u32 ADC_ExternalTrigInjecConv)
{
  u32 tmpreg = 0;

   
  ((void)0);
  ((void)0);

   
  tmpreg = ADCx->CR2;
   
  tmpreg &= ((u32)0xFFFF8FFF);
   
  tmpreg |= ADC_ExternalTrigInjecConv;
   
  ADCx->CR2 = tmpreg;
}












 
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CR2 |= ((u32)0x00008000);
  }
  else
  {
     
    ADCx->CR2 &= ((u32)0xFFFF7FFF);
  }
}












 
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
    
 
    ADCx->CR2 |= ((u32)0x00208000);
  }
  else
  {
    
 
    ADCx->CR2 &= ((u32)0xFFDF7FFF);
  }
}








 
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;

   
  ((void)0);

   
  if ((ADCx->CR2 & ((u32)0x00200000)) != (u32)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }

   
  return  bitstatus;
}










































 
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel, u8 Rank, u8 ADC_SampleTime)
{
  u32 tmpreg1 = 0, tmpreg2 = 0, tmpreg3 = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);

   
  if (ADC_Channel > ((u8)0x09))
  {
     
    tmpreg1 = ADCx->SMPR1;
     
    tmpreg2 = ((u32)0x00000007) << (3*(ADC_Channel - 10));
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (u32)ADC_SampleTime << (3*(ADC_Channel - 10));
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SMPR1 = tmpreg1;
  }
  else  
  {
     
    tmpreg1 = ADCx->SMPR2;
     
    tmpreg2 = ((u32)0x00000007) << (3 * ADC_Channel);
     
    tmpreg1 &= ~tmpreg2;
     
    tmpreg2 = (u32)ADC_SampleTime << (3 * ADC_Channel);
     
    tmpreg1 |= tmpreg2;
     
    ADCx->SMPR2 = tmpreg1;
  }

   
   
  tmpreg1 = ADCx->JSQR;
   
  tmpreg3 =  (tmpreg1 & ((u32)0x00300000))>> 20;
   
  tmpreg2 = ((u32)0x0000001F) << (5 * (u8)((Rank + 3) - (tmpreg3 + 1)));
   
  tmpreg1 &= ~tmpreg2;
   
  tmpreg2 = (u32)ADC_Channel << (5 * (u8)((Rank + 3) - (tmpreg3 + 1)));
   
  tmpreg1 |= tmpreg2;
   
  ADCx->JSQR = tmpreg1;
}










 
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, u8 Length)
{
  u32 tmpreg1 = 0;
  u32 tmpreg2 = 0;

   
  ((void)0);
  ((void)0);
  
   
  tmpreg1 = ADCx->JSQR;
   
  tmpreg1 &= ((u32)0xFFCFFFFF);
   
  tmpreg2 = Length - 1; 
  tmpreg1 |= tmpreg2 << 20;
   
  ADCx->JSQR = tmpreg1;
}

















 
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, u8 ADC_InjectedChannel, u16 Offset)
{
   
  ((void)0);
  ((void)0);
  ((void)0);  

   
  *((vu32 *)((*(u32*)&ADCx) + ADC_InjectedChannel)) = (u32)Offset;
}














 
u16 ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, u8 ADC_InjectedChannel)
{
   
  ((void)0);
  ((void)0);

   
  return (u16) (*(vu32*) (((*(u32*)&ADCx) + ADC_InjectedChannel + ((u8)0x28))));
}

























 
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, u32 ADC_AnalogWatchdog)
{
  u32 tmpreg = 0;

   
  ((void)0);
  ((void)0);

   
  tmpreg = ADCx->CR1;
   
  tmpreg &= ((u32)0xFF3FFDFF);
   
  tmpreg |= ADC_AnalogWatchdog;
   
  ADCx->CR1 = tmpreg;
}












 
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, u16 HighThreshold,
                                        u16 LowThreshold)
{
   
  ((void)0);
  ((void)0);
  ((void)0);

   
  ADCx->HTR = HighThreshold;
   
  ADCx->LTR = LowThreshold;
}





























 
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel)
{
  u32 tmpreg = 0;

   
  ((void)0);
  ((void)0);

   
  tmpreg = ADCx->CR1;
   
  tmpreg &= ((u32)0xFFFFFFE0);
   
  tmpreg |= ADC_Channel;
   
  ADCx->CR1 = tmpreg;
}









 
void ADC_TempSensorVrefintCmd(FunctionalState NewState)
{
   
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ((ADC_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2400))->CR2 |= ((u32)0x00800000);
  }
  else
  {
     
    ((ADC_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x2400))->CR2 &= ((u32)0xFF7FFFFF);
  }
}















 
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, u8 ADC_FLAG)
{
  FlagStatus bitstatus = RESET;

   
  ((void)0);
  ((void)0);

   
  if ((ADCx->SR & ADC_FLAG) != (u8)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }

   
  return  bitstatus;
}















 
void ADC_ClearFlag(ADC_TypeDef* ADCx, u8 ADC_FLAG)
{
   
  ((void)0);
  ((void)0);

   
  ADCx->SR = ~(u32)ADC_FLAG;
}













 
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, u16 ADC_IT)
{
  ITStatus bitstatus = RESET;
  u32 itmask = 0, enablestatus = 0;

   
  ((void)0);
  ((void)0);

   
  itmask = ADC_IT >> 8;

   
  enablestatus = (ADCx->CR1 & (u8)ADC_IT) ;

   
  if (((ADCx->SR & itmask) != (u32)RESET) && enablestatus)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }

   
  return  bitstatus;
}













 
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, u16 ADC_IT)
{
  u8 itmask = 0;

   
  ((void)0);
  ((void)0);

   
  itmask = (u8)(ADC_IT >> 8);

   
  ADCx->SR = ~(u32)itmask;
}

 
