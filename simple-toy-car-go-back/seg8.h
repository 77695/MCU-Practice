#ifndef __SEG8__
#define __SEG8__

sbit SEG8SDA	=     P3^5;
sbit SEG8SHIFT_CP  =  P3^6;
sbit SEG8ST_CP     =  P3^7;
void seg8Disp(uint16 var,uchar rol,uchar pot);
void InitSerialPortSEG8(void);
	void SerialSendDataSEG8(uint16 dat);
#endif
