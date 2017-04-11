/*
驱动电机编写的直流电机pwm驱动程序，与timer0配合使用，pwm周期略小于1khz。by 77695
ch0为p1^3,ch1为P1^4
*/
#include"STC_NEW_8051.h"
#include"defines.h"
#include"pwm.h"

void init_pwm()
{
	CCON = 0;                       //Initial PCA control register
	                            //PCA timer stop running
	                            //Clear CF flag
	                            //Clear all module interrupt flag
	CL = 0;                         //Reset PCA base timer
	CH = 0;
	CMOD = 0x00;                    //Set PCA timer clock source as timer0      =    0000 0000
	                                //Disable PCA timer overflow interrupt
	CCAP0H = CCAP0L = 0;         //PWM0 port output 50% duty cycle square wave
	CCAPM0 = 0x42;                  //PCA module-0 work in 8-bit PWM mode and no PCA interrupt
	CCAP1H = CCAP1L = 0;         //PWM1 port output 0% duty cycle square wave
	CCAPM1 = 0x42;                  //PCA module-1 work in 8-bit PWM mode and no PCA interrupt
	CR = 1;                         //PCA timer start run
}

void set_pwm(uint8 ch,uint8 var)
{
	if(ch==0)
	{
		CCAP0H = CCAP0L = var;
	}else if(ch==1)
	{
		CCAP1H = CCAP1L = var;
	}
}