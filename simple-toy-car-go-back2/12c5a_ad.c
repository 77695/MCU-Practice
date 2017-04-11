#include"defines.h"
#include"12c5a_ad.h"
#include"STC_NEW_8051.h"
#include <intrins.h>
void AD_init()
{
  P1ASF=0x87;//1000 0111..P1^0-P1^2..ADC
  AUXR1=0x00; 
  ADC_RES=0;
  ADC_RESL=0;
  ADC_CONTR=0xe0;//1110 0000
}
uint8 get_ad(uint8 channel)
 {
 	ADC_CONTR=0x88|channel;
	_nop_();           //设置ADC_CONTR寄存器后需加4个CPU时钟周期的延时，才能保证值被写入ADC_CONTR寄存器 
	_nop_();
	_nop_();
	_nop_();
	while(!(ADC_CONTR&0x10));
	ADC_CONTR&=0xe7; 
	return ADC_RES;
 }