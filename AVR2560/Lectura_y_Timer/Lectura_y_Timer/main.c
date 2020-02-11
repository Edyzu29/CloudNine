/*
 * Lectura_y_Timer.c
 *
 * Created: 8 Feb. 2020 10:24:00
 * Author : maxed
 */ 
#define F_CPU	16000000UL

#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>

/* Constantes */
#define DDR_LED		DDRB
#define PORT_LED	PORTB
#define PINK_LED	PORTB
#define LED1		7
#define LED2		6

#define ENABLE_LED(A)	DDR_LED |= (1<< A)
#define LEER_LED(A)		(PINK_LED & (1<<A))

#define BOTTONES		PINK
#define PORT_BOTTONES	PORTK
#define BOTTON1		0
#define BOTTON2		1

#define BOTON_PRESIONADO(A)		(!(BOTTONES & (1<<A)))
#define LED_ON(A)			    PORT_LED |= (1<<A)
#define LED_OFF(A)				PORT_LED &= ~(1<<A)
#define LED_TOGGLE(A)			PORT_LED ^= (1<<A) 

#define IN_PULL_UP_ON(A)		 PORT_BOTTONES|=(1<<A)				

#define XOR(A,B)			((!A && B) || (A && !B))

/* Delclaradas Funciones */
uint8_t Dectecta_Evento_Boton1_Pulsado(void);

/* Funcion principal */
int main(void){
	ENABLE_LED(LED1);
	ENABLE_LED(LED2);
	IN_PULL_UP_ON(BOTTON2);
		while (1){
			if(Dectecta_Evento_Boton1_Pulsado()){
				LED_TOGGLE(LED1);
			}
			if (BOTON_PRESIONADO(BOTTON2)){
				LED_OFF(LED2);
			}else{
				LED_ON(LED2);
			}
		}
	return 0;
}

uint8_t Dectecta_Evento_Boton1_Pulsado(void){
	uint8_t estado_actual;
	static uint8_t estado_anterior = 1;
	uint8_t Flanco_bajada;	
	
	estado_actual= BOTON_PRESIONADO(BOTTON1);
	Flanco_bajada=estado_actual && !estado_anterior;
	estado_anterior=estado_actual;
	
	return Flanco_bajada;
}