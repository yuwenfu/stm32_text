/******************** (C) COPYRIGHT 2008 STMicroelectronics ********************
* File Name          : stm32f10x_pwr.h
* Author             : MCD Application Team
* Version            : V2.0
* Date               : 05/23/2008
* Description        : This file contains all the functions prototypes for the
*                      PWR firmware library.
********************************************************************************
* THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
* FOR MORE INFORMATION PLEASE CAREFULLY READ THE LICENSE AGREEMENT FILE LOCATED 
* IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
*******************************************************************************/

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM32F10x_PWR_H
#define __STM32F10x_PWR_H

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x_map.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* PVD detection level */
#define PWR_PVDLevel_2V2          ((u32)0x00000000)	// PVD探测电压阀值2.2V ；
#define PWR_PVDLevel_2V3          ((u32)0x00000020)	// PVD探测电压阀值2.3V ；
#define PWR_PVDLevel_2V4          ((u32)0x00000040)	// PVD探测电压阀值2.4V ；
#define PWR_PVDLevel_2V5          ((u32)0x00000060)	// PVD探测电压阀值2.5V ；
#define PWR_PVDLevel_2V6          ((u32)0x00000080)	// PVD探测电压阀值2.6V ；
#define PWR_PVDLevel_2V7          ((u32)0x000000A0)	// PVD探测电压阀值2.7V ；
#define PWR_PVDLevel_2V8          ((u32)0x000000C0)	// PVD探测电压阀值2.8V ；
#define PWR_PVDLevel_2V9          ((u32)0x000000E0)	// PVD探测电压阀值2.9V ；

#define IS_PWR_PVD_LEVEL(LEVEL) (((LEVEL) == PWR_PVDLevel_2V2) || ((LEVEL) == PWR_PVDLevel_2V3)|| \
                                 ((LEVEL) == PWR_PVDLevel_2V4) || ((LEVEL) == PWR_PVDLevel_2V5)|| \
                                 ((LEVEL) == PWR_PVDLevel_2V6) || ((LEVEL) == PWR_PVDLevel_2V7)|| \
                                 ((LEVEL) == PWR_PVDLevel_2V8) || ((LEVEL) == PWR_PVDLevel_2V9))

/* Regulator state is STOP mode */
#define PWR_Regulator_ON          ((u32)0x00000000)	// 停止模式下电压转换器ON ；
#define PWR_Regulator_LowPower    ((u32)0x00000001)	// 停止模式下电压转换器进入低功耗模式 ；

#define IS_PWR_REGULATOR(REGULATOR) (((REGULATOR) == PWR_Regulator_ON) || \
                                     ((REGULATOR) == PWR_Regulator_LowPower))

/* STOP mode entry */
#define PWR_STOPEntry_WFI         ((u8)0x01)  // 使用指令WFI来进入停止模式 ；
#define PWR_STOPEntry_WFE         ((u8)0x02)  // 使用指令WFE来进入停止模式 ；

#define IS_PWR_STOP_ENTRY(ENTRY) (((ENTRY) == PWR_STOPEntry_WFI) || ((ENTRY) == PWR_STOPEntry_WFE))
 
/* PWR Flag */
#define PWR_FLAG_WU               ((u32)0x00000001)	// 唤醒标志位 ；
#define PWR_FLAG_SB               ((u32)0x00000002)	// 待命（Standby）标志位 ；
#define PWR_FLAG_PVDO             ((u32)0x00000004)	// PVD输出 ；

#define IS_PWR_GET_FLAG(FLAG) (((FLAG) == PWR_FLAG_WU) || ((FLAG) == PWR_FLAG_SB) || \
                               ((FLAG) == PWR_FLAG_PVDO))
#define IS_PWR_CLEAR_FLAG(FLAG) (((FLAG) == PWR_FLAG_WU) || ((FLAG) == PWR_FLAG_SB))

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void PWR_DeInit(void);
void PWR_BackupAccessCmd(FunctionalState NewState);
void PWR_PVDCmd(FunctionalState NewState);
void PWR_PVDLevelConfig(u32 PWR_PVDLevel);
void PWR_WakeUpPinCmd(FunctionalState NewState);
void PWR_EnterSTOPMode(u32 PWR_Regulator, u8 PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);
FlagStatus PWR_GetFlagStatus(u32 PWR_FLAG);
void PWR_ClearFlag(u32 PWR_FLAG);

#endif /* __STM32F10x_PWR_H */

/******************* (C) COPYRIGHT 2008 STMicroelectronics *****END OF FILE****/
