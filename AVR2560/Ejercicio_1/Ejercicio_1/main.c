/*
 * Ejercicio_1.c
 *
 * Created: 25 Ene. 2020 11:35:01
 * Author : maxed
 */ 

#define  F_CPU 16000000UL

//Librerias
#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>

//COnstantes o macros
	#define TRIS_Leds	DDRF
	#define LAT_Leds	PORTF
	#define Led_blanco	0
	#define Led_rojo	6
	#define Led_amarillo 4
	
//Variables globales
	uint8_t conta=0;
	
//declaracion de funciones
	uint8_t bin_to_gray(uint8_t bin);

//Funcion Main

int main(void)
{
	TRIS_Leds = 0xff;
	LAT_Leds  = 0xff;
    /* Replace with your application code */
    while (1) 
    {
		PORTF ^= (1<<Led_blanco); 
		_delay_ms(1000);
		PORTF ^= (1<<Led_amarillo);
		_delay_ms(1000);
		PORTF ^= (1<<Led_rojo);
		_delay_ms(1000);
		//for(conta=0;conta<=255;conta++){
		//PORTF=bin_to_gray(conta);
		//_delay_ms(1000);
		//}
	}
}

////Funciones secundarias
//uint8_t bin_to_gray(uint8_t bin){
	//uint8_t gray_out;
		//gray_out=bin^(bin>>1);
	//return gray_out;
//}