

#ifndef MIADC_H
#define	MIADC_H

//Constantes

//Banderas y pines
#define Inicio_Adc  ADCON0bits.GO
#define Adc_Flag    PIR1bits.ADIF
#define LectorAdc TRISAbits.RA0

//Funciones
void ConfigADC(void);
uint16_t LecturaADC(uint8_t canal);

#endif	/* MIADC_H */


