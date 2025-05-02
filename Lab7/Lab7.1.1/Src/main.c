int main(void) {
	//PORT REGISTERS
	volatile unsigned int *GPIOA_MODER = (unsigned int*) (0x40020000 + 0x00);
	volatile unsigned int *GPIOC_MODER = (unsigned int*) (0x40020800 + 0x00);
	volatile unsigned int *GPIOA_ODR = (unsigned int*) (0x40020000 + 0x14);
	volatile unsigned int *GPIOC_IDR = (unsigned int*) (0x40020800 + 0x10);

	//CLOCK REGISTERS
	volatile unsigned int *RCC_AHB1ENR = (unsigned int*) (0x40023800 + 0x30);

	//ENABLE PORT CLOCK:
	// this ensure that the peripheral is enabled and connected to the AHB1 bus
	*RCC_AHB1ENR |= 0x05U;
	//CONFIGURE PORT: set MODER[11:10] = 0x1
	*GPIOA_MODER = *GPIOA_MODER | 0x400;
	*GPIOC_MODER = *GPIOC_MODER | 0x000;
	//SWITCH ON THE LED: set ODR[5] = 0x1, that is pulls PA5 high
	*GPIOA_ODR = *GPIOA_ODR | 0x00;
	// Application code (Infinite loop)
	while (1) {
		// Add your code here.
		if ((*GPIOC_IDR & 0x02000) == 0x00000) {
			*GPIOA_ODR = *GPIOA_ODR | 0x20;
		} else {
			*GPIOA_ODR = *GPIOA_ODR & 0xFFDF;
		}
	}
}
