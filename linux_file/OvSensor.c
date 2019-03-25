/*
 * OvSensor.c
 *
 *  Created on: 2017年9月29日
 *      Author: BeatsGr
 */

#include "OvSensor.h"
#include <stdio.h>
#include <unistd.h>
#include <asm/types.h>
#include "xil_io.h"
__u32 rd32_buf;
#define iic_base_addr 0x41200000


void Init_Ov2640()
{
	sccb_senddata(0xFF,0x01);
	sccb_senddata(0x12,0x80);
	sccb_senddata(0xFF,0x00);
	sccb_senddata(0x2C,0xFF);
	sccb_senddata(0x2E,0xDF);
	sccb_senddata(0xFF,0x01);
	sccb_senddata(0x3C,0x32);
	sccb_senddata(0x11,0x01);
	sccb_senddata(0x09,0x02);
	sccb_senddata(0x04,0x78);//安装时摄像头反装 故水平翻转  默认值20
	sccb_senddata(0x13,0xE5);
	sccb_senddata(0x14,0x48);
	sccb_senddata(0x2C,0x0C);
	sccb_senddata(0x33,0x78);
	sccb_senddata(0x3A,0x33);
	sccb_senddata(0x3B,0xFB);
	sccb_senddata(0x3E,0x00);
	sccb_senddata(0x43,0x11);
	sccb_senddata(0x16,0x10);
	sccb_senddata(0x39,0x92);
	sccb_senddata(0x35,0xDA);
	sccb_senddata(0x22,0x1A);
	sccb_senddata(0x37,0xC3);
	sccb_senddata(0x23,0x00);
	sccb_senddata(0x34,0xC0);
	sccb_senddata(0x36,0x1A);
	sccb_senddata(0x06,0x88);
	sccb_senddata(0x07,0xC0);
	sccb_senddata(0x0D,0x87);
	sccb_senddata(0x0E,0x41);
	sccb_senddata(0x4C,0x00);
	sccb_senddata(0x48,0x00);
	sccb_senddata(0x5B,0x00);
	sccb_senddata(0x42,0x03);
	sccb_senddata(0x4A,0x81);
	sccb_senddata(0x21,0x99);
	sccb_senddata(0x24,0x40);
	sccb_senddata(0x25,0x38);
	sccb_senddata(0x26,0x82);
	sccb_senddata(0x5C,0x00);
	sccb_senddata(0x63,0x00);
	sccb_senddata(0x46,0x00);
	sccb_senddata(0x0C,0x3C);
	sccb_senddata(0x61,0x70);
	sccb_senddata(0x62,0x80);
	sccb_senddata(0x7C,0x05);
	sccb_senddata(0x20,0x80);
	sccb_senddata(0x28,0x30);
	sccb_senddata(0x6C,0x00);
	sccb_senddata(0x6D,0x80);
	sccb_senddata(0x6E,0x00);
	sccb_senddata(0x70,0x02);
	sccb_senddata(0x71,0x94);
	sccb_senddata(0x73,0xC1);
	sccb_senddata(0x12,0x40);
	sccb_senddata(0x17,0x11);
	sccb_senddata(0x18,0x43);
	sccb_senddata(0x19,0x00);
	sccb_senddata(0x1A,0x4B);
	sccb_senddata(0x32,0x09);
	sccb_senddata(0x37,0xC0);
	sccb_senddata(0x4F,0xCA);
	sccb_senddata(0x50,0xA8);
	sccb_senddata(0x5a,0x23);
	sccb_senddata(0x6D,0x00);
	sccb_senddata(0x3D,0x38);
	sccb_senddata(0xFF,0x00);
	sccb_senddata(0xE5,0x7F);
	sccb_senddata(0xF9,0xC0);
	sccb_senddata(0x41,0x24);
	sccb_senddata(0xE0,0x14);
	sccb_senddata(0x76,0xFF);
	sccb_senddata(0x33,0xA0);
	sccb_senddata(0x42,0x20);
	sccb_senddata(0x43,0x18);
	sccb_senddata(0x4C,0x00);
	sccb_senddata(0x87,0xD5);
	sccb_senddata(0x88,0x3F);
	sccb_senddata(0xD7,0x03);
	sccb_senddata(0xD9,0x10);
	sccb_senddata(0xD3,0x82);
	sccb_senddata(0xC8,0x08);
	sccb_senddata(0xC9,0x80);
	sccb_senddata(0x7C,0x00);
	sccb_senddata(0x7D,0x00);
	sccb_senddata(0x7C,0x03);
	sccb_senddata(0x7D,0x48);
	sccb_senddata(0x7D,0x48);
	sccb_senddata(0x7C,0x08);
	sccb_senddata(0x7D,0x20);
	sccb_senddata(0x7D,0x10);
	sccb_senddata(0x7D,0x0E);
	sccb_senddata(0x90,0x00);
	sccb_senddata(0x91,0x0E);
	sccb_senddata(0x91,0x1A);
	sccb_senddata(0x91,0x31);
	sccb_senddata(0x91,0x5A);
	sccb_senddata(0x91,0x69);
	sccb_senddata(0x91,0x75);
	sccb_senddata(0x91,0x7E);
	sccb_senddata(0x91,0x88);
	sccb_senddata(0x91,0x8F);
	sccb_senddata(0x91,0x96);
	sccb_senddata(0x91,0xA3);
	sccb_senddata(0x91,0xAF);
	sccb_senddata(0x91,0xC4);
	sccb_senddata(0x91,0xD7);
	sccb_senddata(0x91,0xE8);
	sccb_senddata(0x91,0x20);
	sccb_senddata(0x92,0x00);
	sccb_senddata(0x93,0x06);
	sccb_senddata(0x93,0xE3);
	sccb_senddata(0x93,0x05);
	sccb_senddata(0x93,0x05);
	sccb_senddata(0x93,0x00);
	sccb_senddata(0x93,0x04);
	sccb_senddata(0x93,0x00);
	sccb_senddata(0x93,0x00);
	sccb_senddata(0x93,0x00);
	sccb_senddata(0x93,0x00);
	sccb_senddata(0x93,0x00);
	sccb_senddata(0x93,0x00);
	sccb_senddata(0x93,0x00);
	sccb_senddata(0x96,0x00);
	sccb_senddata(0x97,0x08);
	sccb_senddata(0x97,0x19);
	sccb_senddata(0x97,0x02);
	sccb_senddata(0x97,0x0C);
	sccb_senddata(0x97,0x24);
	sccb_senddata(0x97,0x30);
	sccb_senddata(0x97,0x28);
	sccb_senddata(0x97,0x26);
	sccb_senddata(0x97,0x02);
	sccb_senddata(0x97,0x98);
	sccb_senddata(0x97,0x80);
	sccb_senddata(0x97,0x00);
	sccb_senddata(0x97,0x00);
	sccb_senddata(0xC3,0xED);
	sccb_senddata(0xA4,0x00);
	sccb_senddata(0xA8,0x00);
	sccb_senddata(0xC5,0x11);
	sccb_senddata(0xC6,0x51);
	sccb_senddata(0xBF,0x80);
	sccb_senddata(0xC7,0x10);
	sccb_senddata(0xB6,0x66);
	sccb_senddata(0xB8,0xA5);
	sccb_senddata(0xB7,0x64);
	sccb_senddata(0xB9,0x7C);
	sccb_senddata(0xB3,0xAF);
	sccb_senddata(0xB4,0x97);
	sccb_senddata(0xB5,0xFF);
	sccb_senddata(0xB0,0xC5);
	sccb_senddata(0xB1,0x94);
	sccb_senddata(0xB2,0x0F);
	sccb_senddata(0xC4,0x5C);
	sccb_senddata(0xC0,0x64);
	sccb_senddata(0xC1,0x4B);
	sccb_senddata(0x8C,0x00);
	sccb_senddata(0x86,0x3D);
	sccb_senddata(0x50,0x00);
	sccb_senddata(0x51,0xC8);
	sccb_senddata(0x52,0x96);
	sccb_senddata(0x53,0x00);
	sccb_senddata(0x54,0x00);
	sccb_senddata(0x55,0x00);
	sccb_senddata(0x5A,0xC8);
	sccb_senddata(0x5B,0x96);
	sccb_senddata(0x5C,0x00);
	sccb_senddata(0xD3,0x82);
	sccb_senddata(0xC3,0xED);
	sccb_senddata(0x7F,0x00);
	sccb_senddata(0xDA,0x08);
	sccb_senddata(0xE5,0x1F);
	sccb_senddata(0xE1,0x67);
	sccb_senddata(0xE0,0x00);
	sccb_senddata(0xDD,0x7F);
	sccb_senddata(0x05,0x00);
}
void SCL1()
{
	__u32 Value=0x1;

	rd32_buf = Xil_In32(iic_base_addr);
	Value = rd32_buf | Value;
	Xil_Out32(iic_base_addr,Value );
}
void SCL0()
{
	__u32 Value=0xfffe;

	rd32_buf = Xil_In32(iic_base_addr);
	Value = rd32_buf & Value;
	Xil_Out32(iic_base_addr,Value );
}
void SDA1()
{
	__u32 Value=0x02;

	rd32_buf = Xil_In32(iic_base_addr);
	Value = rd32_buf | Value;
	Xil_Out32(iic_base_addr,Value );
}
void SDA0()
{
	__u32 Value=0xfffd;

	rd32_buf = Xil_In32(iic_base_addr);
	Value = rd32_buf & Value;
	Xil_Out32(iic_base_addr,Value );
}

void sccb_start(void)
{
	SCL1();
	SDA1();
	usleep(10);
	SDA0();
	usleep(10);
	SCL0();
	usleep(10);
}

void sccb_end(void)
{
	SDA0();
	usleep(10);
	SCL1();
	usleep(10);
	SDA1();
	usleep(10);
}

void sccb_sendword(__u16 value)
{
	unsigned char  i=0;

	for(i=0; i<16; i++)
	{
			if(value & 0x8000 )
				SDA1();
			else
				SDA0();

		 usleep(10);
		 SCL1();
		 usleep(10);
		 SCL0();
		 usleep(10);
		// DATA_LOW();
		 //usleep(10);

		 value<<=1;
	 }

	 //第9位，Don’t Care
	 SDA0();
	 usleep(10);
	 SCL1();
	 usleep(10);
	 SCL0();
	 usleep(10);
}
void sccb_sendbyte(__u8 value)
{
	//并行数据转串行输出，串行数据输出的顺序为先高位再低位
	unsigned char  i=0;

	for(i=0; i<8; i++)
	{
			if(value & 0x80 )
				SDA1();
			else
				SDA0();

		 usleep(10);
		 SCL1();
		 usleep(10);
		 SCL0();
		 usleep(10);
		// DATA_LOW();
		 //usleep(10);

		 value<<=1;
	 }

	 //第9位，Don’t Care
	 SDA0();
	 usleep(10);
	 SCL1();
	 usleep(10);
	 SCL0();
	 usleep(10);
}

void sccb_senddata(unsigned char subaddr,unsigned char value)
{
	//3相写传输周期
	sccb_start();									//启动SCCB
	sccb_sendbyte(0x60);    //OV6620设备从地址，写操作
	sccb_sendbyte(subaddr);       //设备内存地址
	sccb_sendbyte(value);         //写数据字节
	sccb_end();                   //结束SCCB

	usleep(2000);
}
