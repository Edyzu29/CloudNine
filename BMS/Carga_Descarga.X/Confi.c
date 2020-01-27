// PIC18F4550 Configuration Bit Settings
// 'C' source line config statements
#include <xc.h>
#include <stdint.h>
#include <stdio.h>
#include "MiADC.h"
#include "EEPROM.h"
#include "Confi.h"
#include "Usart.h"
#include "TMRs.h"


void Inicializacion(void){
    //Puertos
    Tris_Led=0;
    //LIBRERIAS
    ConfigADC();
    Confi_Blue();
    Confi_TMR0();
    
    //Modulos
    OSCCONbits.IRCF=0b111;
}
/*----------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
 ----------------------------------------------------------------------------------------------------------*/
void Led_Twinkle (void){
    Led=1;
    __delay_ms(500);
    Led=0;
     __delay_ms(100);
}
/*----------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
 ----------------------------------------------------------------------------------------------------------*/
uint32_t Division_entera_up(uint32_t dividendo, uint32_t divisor){
    uint32_t cosiente_depurado;
    uint32_t dividendo_depurado;
    uint32_t resto;
    
    resto=dividendo % divisor;
    dividendo_depurado=dividendo - resto;
    cosiente_depurado=dividendo_depurado / divisor;
    if(resto>=(divisor/2))      cosiente_depurado+=1;
    else     cosiente_depurado=cosiente_depurado ;
    
    return cosiente_depurado;
}
/*----------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
 ----------------------------------------------------------------------------------------------------------*/