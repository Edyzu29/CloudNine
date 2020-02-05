/*
 * Display_7Segmentos.h
 *
 * Created: 1 Feb. 2020 12:30:35
 *  Author: maxed
 */ 


#ifndef DISPLAY_7SEGMENTOS_H_
#define DISPLAY_7SEGMENTOS_H_

// Librerías
#include <avr/io.h>
#include <stdint.h>

// Macros
#define N_DISPLAYS 4
#define ENABLE_PORT PORTK
#define ENABLE_TRIS	DDRK
#define DISPLAY_PORT PORTF
#define DISPLAY_TRIS DDRF
#define Enable_0	3
#define Enable_1	2
#define Enable_2	1
#define Enable_3	0
#define MASK_Enable ((1<<Enable_0)|(1<<Enable_1)|(1<<Enable_2)|(1<<Enable_3))

//Variables
extern uint8_t display_buffer[N_DISPLAYS];

//Funciones
void Display_Inicializa(void);
uint8_t Display_Decodificador_Digito_Decimal(uint8_t);
void Display_Decodificador_Entero_Decimal(uint16_t);
void Display_Gestion_Habilitadores (void);

#endif /* DISPLAY_7SEGMENTOS_H_ */