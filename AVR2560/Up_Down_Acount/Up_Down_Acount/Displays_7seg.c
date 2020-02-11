/*
 * Display_7Seg.c
 *
 * Created: 1 Feb. 2020 12:34:41
 *  Author: maxed
 */ 

// Librerías
#include <avr/io.h>
#include <stdint.h>
#include "Displays_7seg.h"

//Variables
uint8_t display_buffer[N_DISPLAYS];
uint8_t tabla_display[]={ 0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

//Funciones
void Display_Inicializa(void){
	//Inicalizar Diplays
	DISPLAY_TRIS=0xff;
	DISPLAY_PORT=0x00;
	//Enables
	ENABLE_TRIS|=MASK_Enable;
	ENABLE_PORT&=~MASK_Enable;
	}

uint8_t Display_Decodificador_Digito_Decimal(uint8_t valor){
	uint8_t salida;
	
	if (valor<10){
		salida=tabla_display[valor];
		}else{
		salida=0x00;
	}
	return salida;
}

void Display_Decodificador_Entero_Decimal(uint16_t bin){
	for(uint8_t i=0; i<N_DISPLAYS; i++){
		display_buffer[i]=Display_Decodificador_Digito_Decimal(bin % 10);
		bin /=10;
	}
}

void Display_Gestion_Habilitadores(void){
	static uint8_t index_display=0;	// definir indice
	uint8_t tabla_enables[N_DISPLAYS]={Enable_0,Enable_1,Enable_2,Enable_3};
		
	ENABLE_PORT&=~MASK_Enable;	//Limpiar todo
	DISPLAY_PORT=display_buffer[index_display];	//Poner el valor
	ENABLE_PORT |= 1<<tabla_enables[index_display];	//Recien moverlo
	index_display++;	//Aunmentar conteo
	if (index_display==N_DISPLAYS) {index_display=0;} //REiniciar conteo
}