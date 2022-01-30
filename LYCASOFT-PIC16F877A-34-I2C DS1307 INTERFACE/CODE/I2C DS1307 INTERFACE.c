#include<pic.h>
#include"LCD 4 BIT.h"
#include<htc.h>

#define I2C_CLOCK 100000
#define BIT_RATE ((F_OSC/(4*I2C_CLOCK))-1)	//49

#define device_id_write 0xD0
#define device_id_read 0xD1
#define hour_12_PM 0x60
#define hour_12_AM 0x40

void Start()
{
	SEN = 1;
	while(!SSPIF);
	SSPIF = 0;
}

void Receive_I2C_Data(unsigned char Data)
{
	SSPBUF = Data;
	while(SSPIF  ==0);
	SSPIF=0;
}

void Restart()
{
	RSEN = 1;
	while(!SSPIF);
	SSPIF=0;
}

char Receive()
{
//	char Ch;
	SSPIF=0;
	RCEN=1;
	while(!SSPIF);
//	Ch = SSPBUF;
//	if(SSPIF == 1)
	ACKDT=0;
	SSPIF=0;
	return SSPBUF;
}

void Stop()
{
	PEN = 1;
	while(SSPIF == 0);
	SSPIF = 0;
}

void Slave_I2C_Initialization()
{
	TRISC3=1;		
	TRISC4=1;
	PORTC=0X00;

	SSPCON=0X28;
	SSPCON2=0X00;
	SSPSTAT=0X80;
	SSPADD=0X24;

//	PEIE=1;
//	SSPIE=1;
//	SSPBUF=0;
	SSPIF=0;
}

void lcd_bcd(int m)
{
	int d1,d2,temp;
	temp=m;
	m=(((temp & 0xf0)>>4)*10)+(temp & 0x0f);
	d1=m/10;
	d2=m%10;
	if(d1==0 || d1==1 || d1==2 || d1==3 || d1==4 || d1==5 || d1==6 || d1==7 || d1==8 || d1==9 )
	Lcd_Data(d1+48);
	Lcd_Data(d2+48);
}

void main()
{
	short int i;
	char r;
	TRISD=0X00;
	PORTD=0X00;
	
	Lcd_Intialization();
	
	Slave_I2C_Initialization();
	Start();
	Receive_I2C_Data(0XD0);
	Receive_I2C_Data(0X00);
	Receive_I2C_Data(0X11);
	Stop();

	Start();
	Receive_I2C_Data(0XD0);
	Receive_I2C_Data(0X01);
	Receive_I2C_Data(0X16);
	Stop();

	Start();
	Receive_I2C_Data(0XD0);
	Receive_I2C_Data(0X02);
	Receive_I2C_Data(0X16);
	Stop();

	while(1)
	{
		Lcd_Command(0x80);

		Start();
		Receive_I2C_Data(0XD0);
		Receive_I2C_Data(0X01);
		Restart();
		Receive_I2C_Data(0XD1);
		r = Receive();
		lcd_bcd(r);
		Stop();

		Start();
		Receive_I2C_Data(0XD0);
		Receive_I2C_Data(0X00);
		Restart();
		Receive_I2C_Data(0XD1);
		r = Receive();
		lcd_bcd(r);
		Stop();
	}
}
