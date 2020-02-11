/*
 * Displays_7seg.h
 *
 * Created: 8 Feb. 2020 23:13:58
 *  Author: maxed
 */ 


#ifndef DISPLAYS_7SEG_H_
#define DISPLAYS_7SEG_H_

// Librerías
#include <avr/io.h>
#include <stdint.h>

// Macros
#define N_DISPLAYS 4

#define ENABLE_PORT PORTK
#define ENABLE_TRIS	DDRK

#define Enable_0	0
#define Enable_1	1
#define Enable_2	2
#define Enable_3	3

#define MASK_Enable ((1<<Enable_0)|(1<<Enable_1)|(1<<Enable_2)|(1<<Enable_3))

#define DISPLAY_PORT PORTF
#define DISPLAY_TRIS DDRF

//Variables
extern uint8_t display_buffer[N_DISPLAYS];

//Funciones
void Display_Inicializa(void);
uint8_t Display_Decodificador_Digito_Decimal(uint8_t);
void Display_Decodificador_Entero_Decimal(uint16_t);
void Display_Gestion_Habilitadores (void);

#endif /* DISPLAYS_7SEG_H_ */