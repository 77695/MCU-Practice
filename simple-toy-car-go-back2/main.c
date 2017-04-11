#include"STC_NEW_8051.h"
#include"defines.h"
#include"uartTimer1.h"
#include"pwm.h"
#include"stdio.h"
#include"12c5a_ad.h"
#include"seg8.h"
#include <intrins.h>

const uint16 LROUNDMM=(213);

#define SPEEDIN (P0&0x0f)
#define PWMINIT0 0x00
#define PWMINIT1 0x00


sbit SPEEDPIN0=P0^0;
sbit SPEEDPIN1=P0^1;
sbit SPEEDPIN2=P0^2;
sbit SPEEDPIN3=P0^3;
sbit CHKBLACK0=P0^4;
sbit CHKBLACK1=P0^5;
sbit CHKBLACK2=P0^6;
sbit PWMOUT0=P1^3;
sbit PWMOUT1=P1^4;
sbit KEY0=P0^7;
uint8 speedpin0_state_old=0;
uint8 speedpin1_state_old=0;
unsigned long int dist=0;
uint8 speedpin2_state_old=0;
uint8 speedpin3_state_old=0;
uint8 chkblack0_state_old=0;
uint8 chkblack1_state_old=0;
uint8 chkblack2_state_old=0;
uint16 pwm_counter=0;
const uint8 CHKBLACK_SURETIME_01MS=30;
const uint8 AHEADADJSTEP=0x0a;
const uint8 PWMSLOW=0xd9;
const uint8 PWMVERYSLOW=0xe8;
/*车轮编号
 1|-前-|0
  |  0 | 
  |  1 |
  |  2 |
 3|-后-|2
	
正转0反转1
*/
uint16 t4us=0;
uint16 t01ms=0;
uint8 chek=0;
idata uint16 time_buf[4][5]={{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0}};
idata uint16 time_gap[4][4]={{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
idata uint16 time_chkblack[6][2]={{0,0},{0,0},{0,0},{0,0},{0,0},{0,0}};
idata uint16 blackchk_time_buf[3]={0,0,0};
idata uint8 black_times[3]={0,0,0};
uint8 speed_pin_state=0;
uint8 car_state=0;
uint8 pwmset0=0;
uint8 pwmset1=0;
uint8 speedin;
uint16 diiiisp=0;
uint8 code dir[4][2]=
{{0x04,0x08},{0x01,0x02},{0x40,0x80},{0x10,0x20}};
void Timer0Init(void)		//100微秒@11.0592MHz
{
	AUXR |= 0x80;		//定时器时钟1T模式
	TMOD &= 0xF0;		//设置定时器模式
	TMOD |= 0x01;		//设置定时器模式
	TL0 = 0xAE;		//设置定时初值
	TH0 = 0xFB;		//设置定时初值
	TF0 = 0;		//清除TF0标志
	TR0 = 1;		//定时器0开始计时
	EA=1;
	ET0=1;
}
void Timer1Init(void)		//100微秒@11.0592MHz
{
	AUXR |= 0x40;		//定时器时钟1T模式
	TMOD &= 0x0F;		//设置定时器模式
	TMOD |= 0x10;		//设置定时器模式
	TL1 = 0xAE;		//设置定时初值
	TH1 = 0xFB;		//设置定时初值
	TF1 = 0;		//清除TF1标志
	TR1 = 1;		//定时器1开始计时
	EA=1;
	ET1=1;
}

void Delay100ms(uint16 t)		//@11.0592MHz
{
	while(t--)
	{
		unsigned char i, j, k;
	
		i = 5;
		j = 52;
		k = 195;
		do
		{
			do
			{
				while (--k);
			} while (--j);
		} while (--i);
	}
}


uint16 op_speed()
{
	uint8 i;
	uint16 sum_time[4];
	for(i=0;i<=3;i++)
	{
		uint8 j=0;
		for(j=0;j<=3;j++)
		{
			time_gap[i][j]=((unsigned long int)time_buf[i][j+1]+0x10000-time_buf[i][j])&0xffff;
		}
	}
	sum_time[0]=((uint16)time_gap[0][0]+time_gap[0][1]+time_gap[0][2]+time_gap[0][3]);
	sum_time[1]=((uint16)time_gap[1][0]+time_gap[1][1]+time_gap[1][2]+time_gap[1][3]);
	sum_time[2]=((uint16)time_gap[2][0]+time_gap[2][1]+time_gap[2][2]+time_gap[2][3]);
	sum_time[3]=((uint16)time_gap[3][0]+time_gap[3][1]+time_gap[3][2]+time_gap[3][3]);
	//printf("time_L:%u__time_R:%u\n",sum_time[1]+sum_time[3],sum_time[0]+sum_time[2]);
	//printf("speed:%d*0.1m/s\n",LROUNDMM*80/((sum_time[0]+sum_time[1]+sum_time[2]+sum_time[3])));
	return LROUNDMM*80/((sum_time[0]+sum_time[1]+sum_time[2]+sum_time[3]));
}
uint16 get_dist_dm()
{
	return (uint16)((dist*LROUNDMM/2000)%10000);
}
void init_all()
{
	P0=0xff;
	//CLK_DIV=0x02;
	//init_pwm();
	Timer0Init();
	Timer1Init();
	UartInit();
	AD_init();
	InitSerialPortSEG8();
}

void main()
{
	uint16 speed=0;
	uint8 distl=0;
	uint8 distr=0;
	uint8 went=0;
	uint16 t01ms_old=0;
	uint16 dist_res=0;
	while(KEY0);
	init_all();
	printf("init ok!");

	while(1)
	{
		if((((unsigned long int)t01ms+0x10000L-t01ms_old)&0xffff)>=5000)
		{
			speed=op_speed();
			dist_res=get_dist_dm();
			t01ms_old=t01ms;
		}

		//seg8Disp(diiiisp,0,2);
		//seg8Disp(car_state,0,2);
		//seg8Disp(distr,1,2);
		//seg8Disp((black_times[0]%10)+(black_times[1]%10)*10+(black_times[2]%10)*100,1,2);
		seg8Disp(speed,0,2);
		seg8Disp(dist_res,1,2);
		if(car_state>=0&&car_state<=9)
		{
			distl=get_ad(0);
			distr=get_ad(1);
	        if(black_times[0]>=0&&black_times[0]<=2)
			{
				pwmset0=0x00;
				pwmset1=0x00;
				car_state=0;
			}
			if(black_times[0]==3)//&&black_times[1]==2)
			{
				pwmset0= PWMSLOW;
				pwmset1= PWMSLOW;
				car_state=1;
			}
			if(black_times[0]==4)//&&black_times[1]==3)
			{
				pwmset0=0x00;
				pwmset1=0x00;
				car_state=0;
			}
			if(black_times[0]==5)
			{
				pwmset0=PWMSLOW;
				pwmset1=PWMSLOW;
				car_state=1;
			}
			if(black_times[0]==6)
			{
				pwmset0=PWMVERYSLOW;
				pwmset1=PWMVERYSLOW;
				car_state=2;
			}
			if(black_times[1]==6)
			{
				pwmset0=0xff;
				pwmset1=0xff;
				car_state=10;
				Delay100ms(6);
				car_state=10;
				black_times[0]=0;
				//pwmset0=0x00;
				//pwmset1=0x00;
				continue;
			}
	
			if(distl<240)
			{
				pwmset1=0xff;
			}else if(distr<240)
			{
				pwmset0=0xff;
			}else if(distl>=240&&distr>=240)
			{
				if(car_state==0)
				{
					pwmset0=0x00;
					pwmset1=0x00;
				}else if(car_state==1)
				{
					pwmset0= PWMSLOW;
					pwmset1= PWMSLOW;
			   	}else if(car_state==2)
				{
					pwmset0=PWMVERYSLOW;
					pwmset1=PWMVERYSLOW;
				}else if(car_state==3)
				{
					pwmset0=0xff;
					pwmset1=0xff;
				}
			}
			P2=dir[0][0]|dir[2][0]|dir[1][0]|dir[3][0];
		}else if(car_state>=10&&car_state<=19)
		{
			distr=get_ad(6);
			distl=get_ad(7);
			if(black_times[0]==0)
			{
				pwmset0=0x00;
				pwmset1=0x00;
				car_state=10;
			}
			if((!went)&&(black_times[0]==1))
			{
				black_times[1]=1;
				black_times[2]=1;
				black_times[0]=11;
				went=1;
			}
			if(went)
			{
		        if(black_times[2]>=0&&black_times[2]<=2)
				{
					pwmset0=0x00;
					pwmset1=0x00;
					car_state=10;
				}
				if(black_times[2]==3)//&&black_times[1]==2)
				{
					pwmset0= PWMSLOW;
					pwmset1= PWMSLOW;
					car_state=11;
				}
				if(black_times[2]==4)//&&black_times[1]==3)
				{
					pwmset0=0x00;
					pwmset1=0x00;
					car_state=10;
				}
				if(black_times[2]==5)
				{
					pwmset0=PWMSLOW;
					pwmset1=PWMSLOW;
					car_state=11;
				}
				if(black_times[2]==6)
				{
					pwmset0=PWMVERYSLOW;
					pwmset1=PWMVERYSLOW;
					car_state=12;
				}
				if(black_times[1]==6)
				{
					pwmset0=0xff;
					pwmset1=0xff;
					car_state=13;
					//Delay100ms(6);
					//car_state=0;
				}
			}
	
			if(distl<240)
			{
				pwmset1=0xff;
			}else if(distr<240)
			{
				pwmset0=0xff;
			}else if(distl>=240&&distr>=240)
			{
				if(car_state==10)
				{
					pwmset0=0x00;
					pwmset1=0x00;
				}else if(car_state==11)
				{
					pwmset0= PWMSLOW;
					pwmset1= PWMSLOW;
			   	}else if(car_state==12)
				{
					pwmset0=PWMVERYSLOW;
					pwmset1=PWMVERYSLOW;
				}else if(car_state==13)
				{
					pwmset0=0xff;
					pwmset1=0xff;
				}
			}
			P2=dir[0][1]|dir[2][1]|dir[1][1]|dir[3][1];
		}
		
	}
}

void timer0()interrupt 1
{
	t01ms++;
	TL0 = 0xAE;		//设置定时初值
	TH0 = 0xFB;		//设置定时初值
}
void timer1()interrupt 3
{
	uint8 speedpin0=SPEEDPIN0;
	uint8 speedpin1=SPEEDPIN1;
	uint8 speedpin2=SPEEDPIN2;
	uint8 speedpin3=SPEEDPIN3;
	uint8 chkblack0=CHKBLACK0;
	uint8 chkblack1=CHKBLACK1;
	uint8 chkblack2=CHKBLACK2;
	uint8 chktime=CHKBLACK_SURETIME_01MS;


   	if(speedpin0!=speedpin0_state_old)
	{	
		speedpin0_state_old=speedpin0;		
		if(speedpin0)
		{		
			time_buf[0][0]=time_buf[0][1];
			time_buf[0][1]=time_buf[0][2];
			time_buf[0][2]=time_buf[0][3];
			time_buf[0][3]=time_buf[0][4];
			time_buf[0][4]=t01ms;
		}
		//dist++;
	}
   	if(speedpin1!=speedpin1_state_old)
	{	
		speedpin1_state_old=speedpin1;		
		if(speedpin1)
		{		
			time_buf[1][0]=time_buf[1][1];
			time_buf[1][1]=time_buf[1][2];
			time_buf[1][2]=time_buf[1][3];
			time_buf[1][3]=time_buf[1][4];
			time_buf[1][4]=t01ms;
		}
		//dist++;
	}
   	if(speedpin2!=speedpin2_state_old)
	{	
		speedpin2_state_old=speedpin2;		
		if(speedpin2)
		{		
			time_buf[2][0]=time_buf[2][1];
			time_buf[2][1]=time_buf[2][2];
			time_buf[2][2]=time_buf[2][3];
			time_buf[2][3]=time_buf[2][4];
			time_buf[2][4]=t01ms;
		}
	//	dist++;
	}
	if(speedpin3!=speedpin3_state_old)
	{	
		speedpin3_state_old=speedpin3;		
		if(speedpin3)
		{		
			time_buf[3][0]=time_buf[3][1];
			time_buf[3][1]=time_buf[3][2];
			time_buf[3][2]=time_buf[3][3];
			time_buf[3][3]=time_buf[3][4];
			time_buf[3][4]=t01ms;
		}
		dist++;
	}
	
	if(car_state!=0)
	{
		chktime=CHKBLACK_SURETIME_01MS*2;
	}
	if(chkblack0!=chkblack0_state_old)
	{	
		chkblack0_state_old=chkblack0;		
		if(!chkblack0)
		{		
			blackchk_time_buf[0]=t01ms;
		}else
		{
			uint16 t01ms_now=t01ms;
			if(((((unsigned long int)t01ms_now+0x10000L-(unsigned long int)blackchk_time_buf[0]))&0xffff)>=chktime)
			{
				diiiisp=((((unsigned long int)t01ms_now+0x10000L-(unsigned long int)blackchk_time_buf[0]))&0xffff);
				black_times[0]++;
			}
		}
	}
	if(chkblack1!=chkblack1_state_old)
	{	
		chkblack1_state_old=chkblack1;		
		if(!chkblack1)
		{		
			blackchk_time_buf[1]=t01ms;
		}else
		{
			uint16 t01ms_now=t01ms;
			if(((((unsigned long int)t01ms_now+0x10000L-(unsigned long int)blackchk_time_buf[1]))&0xffff)>=chktime)
			{

				black_times[1]++;
			}
		}
	}
	if(chkblack2!=chkblack2_state_old)
	{	
		uint16 t01ms_now=t01ms;
		chkblack2_state_old=chkblack2;		
		if(!chkblack2)
		{		
			blackchk_time_buf[2]=t01ms_now;
		}else
		{
			
			if(((((unsigned long int)t01ms_now+0x10000L-(unsigned long int)blackchk_time_buf[2]))&0xffff)>=chktime)
			{
				black_times[2]++;
			}
		}
	}
	pwm_counter++;
	if(pwm_counter>=1000)
	{
		pwm_counter=0;
	}
	if(pwm_counter<=(PWMINIT0+pwmset0)*1000L/255)
	{
		PWMOUT0=0;
	}else
	{
		PWMOUT0=1;
	}
	if(pwm_counter<=(PWMINIT1+pwmset1)*1000L/255)
	{
		PWMOUT1=0;
	}else
	{
		PWMOUT1=1;
	}
	
	TL1 = 0xEC;		//设置定时初值
	TH1 = 0xFE;		//设置定时初值

}
void uartintrrupt()interrupt 5
{
}
