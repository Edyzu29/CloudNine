/*
 * Anti_Bounce_Button.c
 *
 * Created: 8 Feb. 2020 23:57:28
 *  Author: maxed
 */ 
#include <avr/io.h>
#include <stdint.h>
#include "Anti_Bounce_Button.h"
/**********************************************************************************
***********************************************************************************/
uint8_t Rising_Edge_Button1_Pull_Up(void){
	uint8_t rising_edge;
	static uint8_t previous_state = 1;
	uint8_t present_state;
	
		present_state = BUTTON_PRESS_PULL_UP(BUTTON1);
		rising_edge = present_state && !previous_state;
		previous_state = present_state;
	
	return rising_edge;
}
/*--------------------------------------------------------------------------------*/
uint8_t Lowering_Edge_Button1_Pull_Up(void){
	uint8_t lowering_edge;
	static uint8_t previous_state = 1;
	uint8_t present_state;
	
		present_state = BUTTON_PRESS_PULL_UP(BUTTON1);
		lowering_edge = !present_state && previous_state;
		previous_state = present_state;
	
	return lowering_edge;
}
/*--------------------------------------------------------------------------------*/
uint8_t Rising_Edge_Button2_Pull_Up(void){
	uint8_t rising_edge;
	static uint8_t previous_state = 1;
	uint8_t present_state;
	
		present_state = BUTTON_PRESS_PULL_UP(BUTTON2);
		rising_edge = present_state && !previous_state;
		previous_state = present_state;
	
	return rising_edge;
}
/*--------------------------------------------------------------------------------*/
uint8_t Lowering_Edge_Button2_Pull_Up(void){
	uint8_t lowering_edge;
	static uint8_t previous_state = 1;
	uint8_t present_state;
	
		present_state = BUTTON_PRESS_PULL_UP(BUTTON2);
		lowering_edge = !present_state && previous_state;
		previous_state = present_state;
	
	return lowering_edge;
}
/**********************************************************************************
***********************************************************************************/
uint8_t Rising_Edge_Button1_Pull_Down(void){
	uint8_t rising_edge;
	static uint8_t previous_state = 1;
	uint8_t present_state;
	
		present_state = BUTTON_PRESS_PULL_DOWN(BUTTON1);
		rising_edge = present_state && !previous_state;
		previous_state = present_state;
	
	return rising_edge;
}
/*--------------------------------------------------------------------------------*/
uint8_t Lowering_Edge_Button1_Pull_Down(void){
	uint8_t lowering_edge;
	static uint8_t previous_state = 1;
	uint8_t present_state;
	
		present_state = BUTTON_PRESS_PULL_DOWN(BUTTON1);
		lowering_edge = !present_state && previous_state;
		previous_state = present_state;
	
	return lowering_edge;
}
/*--------------------------------------------------------------------------------*/
uint8_t Rising_Edge_Button2_Pull_Down(void){
	uint8_t rising_edge;
	static uint8_t previous_state = 1;
	uint8_t present_state;
	
		present_state = BUTTON_PRESS_PULL_DOWN(BUTTON2);
		rising_edge = present_state && !previous_state;
		previous_state = present_state;
	
	return rising_edge;
}
/*--------------------------------------------------------------------------------*/
uint8_t Lowering_Edge_Button2_Pull_Down(void){
	uint8_t lowering_edge;
	static uint8_t previous_state = 1;
	uint8_t present_state;
	
		present_state = BUTTON_PRESS_PULL_DOWN(BUTTON2);
		lowering_edge = !present_state && previous_state;
		previous_state = present_state;
	
	return lowering_edge;
}
/*--------------------------------------------------------------------------------*/
/**********************************************************************************
***********************************************************************************/