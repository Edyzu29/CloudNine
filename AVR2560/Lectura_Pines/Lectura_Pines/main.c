/*
 * Lectura_Pines.c
 *
 * Created: 1 Feb. 2020 12:50:55
 * Author : maxed
 */ 

#include <avr/io.h>

//Macros
#define LED_TRIS	DDRB
#define LED_PORT	PORTB
#define LED			7
#define BOTON_TRIS	DDRK
#define BOTON_PIN	PINK  
#define BOTON	    0

int main(void)
{
	LED_TRIS |= (1<<LED);
	BOTON_TRIS &= ~(1<<BOTON);
    /* Replace with your application code */
    while (1) 
    {
		if (BOTON_PORT==1)
		{
			
		}
    }
}

