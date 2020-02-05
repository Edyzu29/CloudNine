/*
 * Decodificador_Display.c
 *
 * Created: 1 Feb. 2020 09:35:23
 * Author : maxed
 */ 

// Frec del oscilador
#define F_CPU 16000000UL
// Librerías
#include <avr/io.h>
#include <stdint.h>
#include <util/delay.h>
#include "Display_7Segmentos.h"

// Macros 

//Variables

//Funciones


int main(void)
{
	Display_Inicializa();
    while (1){
		for (uint16_t franciaco=0; franciaco<65535; franciaco++){		
			Display_Decodificador_Entero_Decimal(franciaco);
			for (uint8_t pepe=0; pepe<(125/20); pepe++){
				Display_Gestion_Habilitadores();
				_delay_ms(4);				
			}		
		}
	}
	return 0;
}