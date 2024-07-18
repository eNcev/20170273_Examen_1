#include <stdint.h>

void delay(uint32_t seg)
{
	for(uint32_t i = 0; i < seg*100000; i++);
}


int main(void)
{
	// Dirección del registro de configuración del PUERTO C:
		// BASE  GPIO_PORTC = 0x40011000
		// OFFSET = 0X04
		// GPIOC_CRH = BASE + OFFSET = 0x40011004
	
	// Dirección de la señal de reloj
		// BASE RCC = 0x40021000
		// OFFSET = 0x18
		// RCC_APB2ENR = 0x40021018


	// Dirección de los pines del PUERTO C
		// GPIOC_ODR = 0x4001100C

	uint32_t* clk_reg = (uint32_t *) 0x40021018;
	uint32_t* puertoc_crh = (uint32_t *) 0x40011004;
	uint32_t* puertoc_odr = (uint32_t *) 0x4001100C;

	// Inicializar señal de reloj del Puerto C
	*clk_reg |= (1<<4);

	// Configuración de las salidas PC13, PC14 y PC15
	*puertoc_crh &= 0x000FFFFF;
	*puertoc_crh |= 0x22200000;

	// Bits a usar (ODR):
		// PC13: 13 (LED ROJO)
		// PC14: 14 (LED AMARILLO)
		// PC15: 15 (LED VERDE)

	// Inicializar apagados los 3 LEDs (Según diagrama estan conectados con
	// Resistencias Pull-Up)
	*puertoc_odr &= ~(0x0000E000);

	while(1)
	{
		// Encender LED ROJO por 6 segundos y apagar
		*puertoc_odr |= (1<<13);
		delay(6);
		*puertoc_odr &= ~(1<<13);

		// Encender LED AMARILLO por 2 segundos y apagar
		*puertoc_odr |= (1<<14);
		delay(2);
		*puertoc_odr &= ~(1<<14);
		
		// Encender LED VERDE por 10 segundos y apagar
		*puertoc_odr |= (1<<15);
		delay(10);
		*puertoc_odr &= ~(1<<15);
	}

	return 0;
}