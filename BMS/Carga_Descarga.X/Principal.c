#include "Confi.h"
#include <xc.h>
#include <stdint.h>
#include <stdio.h>
#include "EEPROM.h"
#include "MiADC.h"
#include "TMRs.h"
#include "Usart.h"

//Constantes
#define Top_1minuto 20

//Variables
uint8_t Bandera_1s;
uint8_t conta_60 = 0;
uint8_t conta_3h = 0;
float Valor_battery;
char abc0;

//Funciones
uint8_t A[10]={10,1,10,5,10,1,10,5,10,1};
char V[4];

void main (void){
    Inicializacion();
   //Interrupciones_Usart(1);
    UART0_Tx_String(" pipo\r\n");
      Led_Twinkle();
    while (1){
       if(Rx_flag==1) {
             Led_Twinkle();
            abc0=Rx();
            Rx_flag=0;
            switch (abc0){
                case '1':
                        for(int i=0; i<10;i++) {
                            Tx_num(A[i]);
                        }                            
                    break;
                case '0':
                        Tx_str('C');
                    break;
                    }
          }   
    }
}

//Programacion 
/*
         Lectura_del_brillo=LecturaADC(0);                 
         UART0_Tx_Integer(Lectura_del_brillo);
         UART0_Tx_String("\r\n");  
 ----------------------------------------------------------------------------------------------------------------------------------
            aux=LecturaADC(1);
            Brillo=Division_entera_up(aux*100,1023);        
            Duty_Cycle_Change(Brillo);
----------------------------------------------------------------------------------------------------------------------------------
         if(Rx_flag==1) {
            abc0=Rx();
            switch (abc0){
                case '1':
                        Tx_num(1);
                    break;
                case '0':
                        Tx_num(3);
                    break;
            }
            Rx_flag=0;
        }
-------------------------------------------------------------------------------------------------------------------------------------
 uint8_t Cuenta_1s (void);

void main (void){
    Inicializacion();
    TMR0_Start = 1;
    UART0_Tx_String("HOLA\r\n");
    while (1){
        LATDbits.LATD0=1;
       if (Cuenta_1s() == 1) {
            Valor_battery = LecturaADC();
            UART0_Tx_Integer(Valor_battery);
            UART0_Tx_String("\r\n");
            Save_entero(Valor_battery,conta_3h);
            conta_3h++;
        } 
    }
}


uint8_t Cuenta_1s (void){
    Bandera_1s = 0;
    if(TMR0_Flag==1){
        TMR0_Reset();
        conta_60++;
        if(conta_60 == Top_1minuto){
            conta_60 = 0;
            Bandera_1s = 1;
        }
    }
    return Bandera_1s;
}
 */