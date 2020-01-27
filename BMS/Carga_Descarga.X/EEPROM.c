#include <xc.h>
#include <stdint.h>
#include "EEPROM.h"

//Funcionalidad de Funciones
void Save_float (float flotante,int adre){          //Grarda datos en la EEPRROM
        EEADR=adre;                            //Elije la direccion a guardar
        EEDATA=flotante;                        //Señalas el dato a guardar
        EECON1 = 0x04;                      //Activas la escritura
        EECON2 = 0x55;                      //Siempre va
        EECON2 = 0xAA;                      //Siempre va
        EECON1bits.WR = 1;                  // Orden de escritura
        while(EECON1bits.WR == 1);  
}
/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/
void Save_entero (int entero,int direcc){          //Grarda datos en la EEPRROM
        EEADR=direcc;                            //Elije la direccion a guardar
        EEDATA=entero;                        //Señalas el dato a guardar
        EECON1 = 0x04;                      //Activas la escritura
        EECON2 = 0x55;                      //Siempre va
        EECON2 = 0xAA;                      //Siempre va
        EECON1bits.WR = 1;                  // Orden de escritura
        while(EECON1bits.WR == 1);  
}
/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/
int  Show_data (int mario){     //Leen datos de la memoria EEPRROM
    EEADR=mario;
    EECON1=0x01;                // RD = 1, Orden de lectura
    return EEDATA;
}
/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/
void Guardafloat(int address,float pipo){
    for(j=0;j<=3;j++) Save_float(*((int8_t*)(&pipo)+j),(4*address)+j);
}
/*XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*/
float SacaDatos(uint8_t direc){
    float data;//Acumula toda la informacion que anteriormente se segmento para el guardado
    for(j=0x00;j<=0x03;j++) *((int8_t*)(&data)+j) = Show_data(j+direc);
    return data;
}