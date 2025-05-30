/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file    stm32f4xx_it.c
 * @brief   Interrupt Service Routines.
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2025 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f4xx_it.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
// Define directives in main.h
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/

/* USER CODE BEGIN EV */
extern uint16_t voltage;
extern uint8_t scalingFactor;
extern uint8_t newData;
/* USER CODE END EV */

/******************************************************************************/
/*           Cortex-M4 Processor Interruption and Exception Handlers          */
/******************************************************************************/
/**
 * @brief This function handles Non maskable interrupt.
 */
void NMI_Handler(void) {
	/* USER CODE BEGIN NonMaskableInt_IRQn 0 */

	/* USER CODE END NonMaskableInt_IRQn 0 */
	/* USER CODE BEGIN NonMaskableInt_IRQn 1 */
	while (1) {
	}
	/* USER CODE END NonMaskableInt_IRQn 1 */
}

/**
 * @brief This function handles Hard fault interrupt.
 */
void HardFault_Handler(void) {
	/* USER CODE BEGIN HardFault_IRQn 0 */

	/* USER CODE END HardFault_IRQn 0 */
	while (1) {
		/* USER CODE BEGIN W1_HardFault_IRQn 0 */
		/* USER CODE END W1_HardFault_IRQn 0 */
	}
}

/**
 * @brief This function handles Memory management fault.
 */
void MemManage_Handler(void) {
	/* USER CODE BEGIN MemoryManagement_IRQn 0 */

	/* USER CODE END MemoryManagement_IRQn 0 */
	while (1) {
		/* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
		/* USER CODE END W1_MemoryManagement_IRQn 0 */
	}
}

/**
 * @brief This function handles Pre-fetch fault, memory access fault.
 */
void BusFault_Handler(void) {
	/* USER CODE BEGIN BusFault_IRQn 0 */

	/* USER CODE END BusFault_IRQn 0 */
	while (1) {
		/* USER CODE BEGIN W1_BusFault_IRQn 0 */
		/* USER CODE END W1_BusFault_IRQn 0 */
	}
}

/**
 * @brief This function handles Undefined instruction or illegal state.
 */
void UsageFault_Handler(void) {
	/* USER CODE BEGIN UsageFault_IRQn 0 */

	/* USER CODE END UsageFault_IRQn 0 */
	while (1) {
		/* USER CODE BEGIN W1_UsageFault_IRQn 0 */
		/* USER CODE END W1_UsageFault_IRQn 0 */
	}
}

/**
 * @brief This function handles System service call via SWI instruction.
 */
void SVC_Handler(void) {
	/* USER CODE BEGIN SVCall_IRQn 0 */

	/* USER CODE END SVCall_IRQn 0 */
	/* USER CODE BEGIN SVCall_IRQn 1 */

	/* USER CODE END SVCall_IRQn 1 */
}

/**
 * @brief This function handles Debug monitor.
 */
void DebugMon_Handler(void) {
	/* USER CODE BEGIN DebugMonitor_IRQn 0 */

	/* USER CODE END DebugMonitor_IRQn 0 */
	/* USER CODE BEGIN DebugMonitor_IRQn 1 */

	/* USER CODE END DebugMonitor_IRQn 1 */
}

/**
 * @brief This function handles Pendable request for system service.
 */
void PendSV_Handler(void) {
	/* USER CODE BEGIN PendSV_IRQn 0 */

	/* USER CODE END PendSV_IRQn 0 */
	/* USER CODE BEGIN PendSV_IRQn 1 */

	/* USER CODE END PendSV_IRQn 1 */
}

/**
 * @brief This function handles System tick timer.
 */
void SysTick_Handler(void) {
	/* USER CODE BEGIN SysTick_IRQn 0 */

	/* USER CODE END SysTick_IRQn 0 */

	/* USER CODE BEGIN SysTick_IRQn 1 */

	/* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32F4xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f4xx.s).                    */
/******************************************************************************/

/**
 * @brief This function handles ADC1 global interrupt.
 */
void ADC_IRQHandler(void) {
	/* USER CODE BEGIN ADC_IRQn 0 */
	if ((LL_ADC_ReadReg(ADC1,SR) & 0x02) == 0x02) {
		voltage = LL_ADC_ReadReg(ADC1, DR) & 0x00FF; // Get converted value
		newData = 1;
		LL_ADC_WriteReg(ADC1, SR, LL_ADC_ReadReg(ADC1,SR) & (~0x02)); // Clear EOC
	}

	/* USER CODE END ADC_IRQn 0 */
	/* USER CODE BEGIN ADC_IRQn 1 */
	
	/* USER CODE END ADC_IRQn 1 */
}

/**
 * @brief This function handles TIM3 global interrupt.
 */
void TIM3_IRQHandler(void) {
	/* USER CODE BEGIN TIM3_IRQn 0 */
	// Check for CC1IF
	if (LL_TIM_IsActiveFlag_CC1(TIM3)) {
		LL_TIM_WriteReg(TIM3, CCR1,
				LL_TIM_ReadReg(TIM3,CCR1) + (INTERVAL3/scalingFactor));	// Update CCR1
		LL_TIM_ClearFlag_CC1(TIM3);								// Clear CC1IF

		// Check for CC2IF
	} else if (LL_TIM_IsActiveFlag_CC2(TIM3)) {
		LL_TIM_WriteReg(TIM3, CCR2,
				LL_TIM_ReadReg(TIM3,CCR2) + (INTERVAL2/scalingFactor));	// Update CCR2
		LL_TIM_ClearFlag_CC2(TIM3);	// Clear CC2IF

		// Check for CC3IF
	} else if (LL_TIM_IsActiveFlag_CC3(TIM3)) {
		LL_TIM_WriteReg(TIM3, CCR3,
				LL_TIM_ReadReg(TIM3,CCR3) + (INTERVAL1/scalingFactor));	// Update CCR3
		LL_TIM_ClearFlag_CC3(TIM3);			// Clear CC3IF
	}
	/* USER CODE END TIM3_IRQn 0 */
	/* USER CODE BEGIN TIM3_IRQn 1 */

	/* USER CODE END TIM3_IRQn 1 */
}

/**
 * @brief This function handles TIM4 global interrupt.
 */
void TIM4_IRQHandler(void) {
	/* USER CODE BEGIN TIM4_IRQn 0 */
	if (LL_TIM_IsActiveFlag_CC2(TIM4)) {
		LL_TIM_WriteReg(TIM4, CCR2, LL_TIM_ReadReg(TIM4,CCR2) + ADCINTERVAL);// Update CC2
		LL_ADC_WriteReg(ADC1, CR2, LL_ADC_ReadReg(ADC1,CR2) | (1 << 30)); // Start conversion of ADC
		LL_TIM_ClearFlag_CC2(TIM4);								// Clear CC2IF
	}
	/* USER CODE END TIM4_IRQn 0 */
	/* USER CODE BEGIN TIM4_IRQn 1 */

	/* USER CODE END TIM4_IRQn 1 */
}

/**
 * @brief This function handles EXTI line[15:10] interrupts.
 */
void EXTI15_10_IRQHandler(void) {
	/* USER CODE BEGIN EXTI15_10_IRQn 0 */

	/* USER CODE END EXTI15_10_IRQn 0 */
	if (LL_EXTI_IsActiveFlag_0_31(LL_EXTI_LINE_13) != RESET) {
		LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_13);
		/* USER CODE BEGIN LL_EXTI_LINE_13 */
		LL_GPIO_WriteReg(GPIOA, ODR, LL_GPIO_ReadReg(GPIOA,ODR) ^ (1<<5));// Toggle PA5
		/* USER CODE END LL_EXTI_LINE_13 */
	}
	/* USER CODE BEGIN EXTI15_10_IRQn 1 */

	/* USER CODE END EXTI15_10_IRQn 1 */
}

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */
