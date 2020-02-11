/*
 * Up_Down_Acount.c
 *
 * Created: 8 Feb. 2020 23:01:13
 * Author : maxed
 */ 
#define F_CPU	16000000UL

#include <avr/io.h>
#include <stdint.h>
#include <util/delay.h>
#include "Displays_7seg.h"
#include "Anti_Bounce_Button.h"

/* Constantes */
#define DDR_LED		DDRF
#define PORT_LED	PORTF
#define PINK_LED	PORTF
#define LED			5

#define LED_ON(A)		PORT_LED |=  (1<<LED)
#define LED_OFF(A)		PORT_LED &= ~(1<<LED)
#define LED_TOUGGLE(A)	PORT_LED ^=  (1<<LED)

#define READ_LED(A)		PINK_LED &= ~(1<<LED)

/* funciones */
int main(void){
	// Variables
	uint8_t Conteo=0;
	
	//Inicializacion
	DDR_LED |= (1<<LED);
	Display_Inicializa();
	
    while (1){
		
		if (Rising_Edge_Button1_Pull_Up()){
			LED_TOUGGLE(LED);
			_delay_ms(2);	
		}
		
		if (Rising_Edge_Button2_Pull_Up()){
			if (READ_LED(LED)){
				if (Conteo == 255){Conteo = 0;} 
				else{Conteo++;}
			}
			else{
				if (Conteo == 0){Conteo = 255;}
				else{Conteo--;}
			}
		}
		
		Display_Decodificador_Entero_Decimal(Conteo);
		for (uint8_t pepe=0; pepe<(125/20); pepe++){
			Display_Gestion_Habilitadores();
			_delay_ms(4);
		}
    }
}