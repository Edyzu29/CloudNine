/*
 * Timer.c
 *
 * Created: 29 Feb. 2020 10:16:39
 * Author : maxed
 */ 

#include <avr/io.h>
#include <stdint.h>

/*Macros*/
#define PORT_LED	PORTF
#define DDR_LED		DDRF
#define LED			7

#define TIMER0_OFFSET	131

/* Funciones */
void Timer0_Init(void);


int main(void)
{
	uint16_t conta_500ms = 0;
	uint8_t  Conta = 0;
	
    DDR_LED = 255;
	Timer0_Init();
    while (1){
		if ((TIFR0 & (1<<TOV0))){
			TCNT0 = TIMER0_OFFSET;
			TIFR0 |= (1<<TOV0);
			conta_500ms++;			
		}
		if (conta_500ms == 4000){
			if (Conta<=255){
				Conta++;
			}else{
				Conta=0;
			}
			PORT_LED=Conta;
			conta_500ms=0;
		}
    }
	return 0;
}

void Timer0_Init(void){
	//Cargar el valor de offset
	TCNT0 = TIMER0_OFFSET;
	//Config source
	TCCR0B |=((1<<CS00) | (1<<CS01));
}

