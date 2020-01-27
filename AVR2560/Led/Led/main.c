/*
 * Led.c
 *
 * Created: 25 Ene. 2020 10:00:40
 * Author : maxed
 */ 
#define F_CPU 16000000
#include <avr/io.h>
#include <util/delay.h>
int main(void){
	DDRB |= (1 << 7);
	while (1) {
		PORTB ^= (1 << 7);
		_delay_ms(10000);
	}
}

