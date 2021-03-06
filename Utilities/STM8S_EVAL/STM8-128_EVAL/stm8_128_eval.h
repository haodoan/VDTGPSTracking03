/**
  ******************************************************************************
  * @file    stm8_128_eval.h
  * @author  MCD Application Team
  * @version V1.0.0
  * @date    25-February-2011
  * @brief   This file contains definitions for STM8_128_EVAL's Leds, push-buttons
  *          and COM ports hardware resources.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */ 

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM8_128_EVAL_H
#define __STM8_128_EVAL_H

/* Includes ------------------------------------------------------------------*/
#include "stm8s_eval.h"

/** @addtogroup Utilities
  * @{
  */

/** @addtogroup STM8S_EVAL
  * @{
  */

/** @addtogroup STM8_128_EVAL
  * @{
  */
/** @addtogroup STM8_128_EVAL_LOW_LEVEL
  * @{
  */

/* Exported types ------------------------------------------------------------*/

/** @defgroup STM8_128_EVAL_LOW_LEVEL_Exported_Constants
  * @{
  */
/** @addtogroup STM8_128_EVAL_LOW_LEVEL_LED
  * @{
  */

#define LEDn                        4
#define LED1_GPIO_PORT              GPIOA
#define LED1_GPIO_PIN               GPIO_PIN_3


#define LED2_GPIO_PORT              GPIOA
#define LED2_GPIO_PIN               GPIO_PIN_2

#define LED3_GPIO_PORT              GPIOA
#define LED3_GPIO_PIN               GPIO_PIN_1

#define LED4_GPIO_PORT              GPIOA
#define LED4_GPIO_PIN               GPIO_PIN_0


/**
  * @}
  */

/** @addtogroup STM8_128_EVAL_LOW_LEVEL_BUTTON
  * @{
  */
#define BUTTONn                     6

/**
 * @brief Key push-button
 */
#define KEY_BUTTON_PORT             GPIOC
#define KEY_BUTTON_PIN              GPIO_PIN_0

/**
 * @brief Joystick Right push-button
 */
#define RIGHT_BUTTON_PORT           GPIOB
#define RIGHT_BUTTON_PIN            GPIO_PIN_5

/**
 * @brief Joystick Left push-button
 */
#define LEFT_BUTTON_PORT            GPIOB
#define LEFT_BUTTON_PIN             GPIO_PIN_4

/**
 * @brief Joystick Up push-button
 */
#define UP_BUTTON_PORT              GPIOB
#define UP_BUTTON_PIN               GPIO_PIN_6

/**
 * @brief Joystick Down push-button
 */
#define DOWN_BUTTON_PORT            GPIOB
#define DOWN_BUTTON_PIN             GPIO_PIN_7

/**
 * @brief Joystick Sel push-button
 */
#define SEL_BUTTON_PORT             GPIOD
#define SEL_BUTTON_PIN              GPIO_PIN_7

/**
 * @brief EXTI push-button definition
 */
#define KEY_BUTTON_EXTI_PORT        EXTI_PORT_GPIOC
#define RIGHT_BUTTON_EXTI_PORT      EXTI_PORT_GPIOB
#define LEFT_BUTTON_EXTI_PORT       EXTI_PORT_GPIOB
#define UP_BUTTON_EXTI_PORT         EXTI_PORT_GPIOB
#define DOWN_BUTTON_EXTI_PORT       EXTI_PORT_GPIOB
#define SEL_BUTTON_EXTI_PORT        EXTI_PORT_GPIOD

/**
  * @}
  */

/** @addtogroup STM8_128_EVAL_SD_SPI
  * @{
  */
/**
  * @brief  SD SPI Interface pins
  */
#define SD_SPI_CLK                       CLK_PERIPHERAL_SPI
#define SD_SPI_SCK_PIN                   GPIO_PIN_5                  /* PC.05 */
#define SD_SPI_SCK_GPIO_PORT             GPIOC                       /* GPIOC */
#define SD_SPI_MISO_PIN                  GPIO_PIN_7                  /* PC.05 */
#define SD_SPI_MISO_GPIO_PORT            GPIOC                       /* GPIOC */
#define SD_SPI_MOSI_PIN                  GPIO_PIN_6                  /* PC.06 */
#define SD_SPI_MOSI_GPIO_PORT            GPIOC                       /* GPIOC */
#define SD_CS_PIN                        GPIO_PIN_5                  /* PE.05 */
#define SD_CS_GPIO_PORT                  GPIOE                       /* GPIOE */
#define SD_DETECT_PIN                    GPIO_PIN_4                  /* PE.04 */
#define SD_DETECT_GPIO_PORT              GPIOE                       /* GPIOE */

/**
  * @}
  */

/** @addtogroup STM8_128_EVAL_LOW_LEVEL_I2C_EE
  * @{
  */
/**
  * @brief  I2C EEPROM Interface pins
  */
#define sEE_I2C                          I2C  
#define sEE_I2C_CLK                      CLK_PERIPHERAL_I2C
#define sEE_I2C_SCL_PIN                  GPIO_PIN_1                  /* PC.01 */
#define sEE_I2C_SCL_GPIO_PORT            GPIOE                       /* GPIOE */
#define sEE_I2C_SDA_PIN                  GPIO_PIN_2                  /* PC.00 */
#define sEE_I2C_SDA_GPIO_PORT            GPIOE                       /* GPIOE */
#define sEE_M24C64_32


#define sEE_DIRECTION_TX                 0
#define sEE_DIRECTION_RX                 1

/**
  * @}
  */

/* Exported macro ------------------------------------------------------------*/

/** @defgroup STM8_128_EVAL_LOW_LEVEL_Exported_Functions
  * @{
  */
void STM_EVAL_LEDInit(Led_TypeDef Led);
void STM_EVAL_LEDOn(Led_TypeDef Led);
void STM_EVAL_LEDOff(Led_TypeDef Led);
void STM_EVAL_LEDToggle(Led_TypeDef Led);
void STM_EVAL_PBInit(Button_TypeDef Button, ButtonMode_TypeDef Button_Mode);
uint8_t STM_EVAL_PBGetState(Button_TypeDef Button);
void SD_LowLevel_DeInit(void);
void SD_LowLevel_Init(void);
void sEE_LowLevel_DeInit(void);
void sEE_LowLevel_Init(void);


/**
  * @}
  */

#endif /* __STM8_128_EVAL_H */

/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
