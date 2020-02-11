/*
 * Anti_Bounce_Button.h
 *
 * Created: 8 Feb. 2020 23:56:33
 *  Author: maxed
 */ 


#ifndef ANTI_BOUNCE_BUTTON_H_
#define ANTI_BOUNCE_BUTTON_H_

#include <avr/io.h>
#include <stdint.h>

/* Macros */
#define PORT_BUTTON			PORTK	
#define PIN_BUTTON			PINK
#define BUTTON1				6
#define BUTTON2				7

#define BUTTON_PRESS_PULL_UP(A)			!(PIN_BUTTON & (1<<A))
#define BUTTON_PRESS_PULL_DOWN(A)		  PIN_BUTTON & (1<<A)
#define INTERNAL_PULL_UP_ON(A)			  PORT_BUTTON |= (1<<A)

#define XOR(A,B)			(!A && B)||(A && !B)

/* Functions */
uint8_t Rising_Edge_Button1_Pull_Up(void);
uint8_t Lowering_Edge_Button1_Pull_Up(void);
/*--------------------------------------------------------------------------------*/
uint8_t Rising_Edge_Button2_Pull_Up(void);
uint8_t Lowering_Edge_Button2_Pull_Up(void);
/**********************************************************************************
***********************************************************************************/
uint8_t Rising_Edge_Button1_Pull_Down(void);
uint8_t Lowering_Edge_Button1_Pull_Down(void);
/*--------------------------------------------------------------------------------*/
uint8_t Rising_Edge_Button2_Pull_Down(void);
uint8_t Lowering_Edge_Button2_Pull_Down(void);

#endif /* ANTI_BOUNCE_BUTTON_H_ */