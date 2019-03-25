-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jan 12 14:38:14 2019
-- Host        : DESKTOP-CQ8S6HV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/EES_Board/EES_335/EES_335.srcs/sources_1/bd/EES_335/ip/EES_335_Pid_Motor_Ctrl_0_0/EES_335_Pid_Motor_Ctrl_0_0_stub.vhdl
-- Design      : EES_335_Pid_Motor_Ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EES_335_Pid_Motor_Ctrl_0_0 is
  Port ( 
    in_phA : in STD_LOGIC;
    in_phB : in STD_LOGIC;
    out_w_PWMdir : out STD_LOGIC;
    out_w_PWM_p : out STD_LOGIC;
    out_w_PWM_n : out STD_LOGIC;
    motor_s_axi_aclk : in STD_LOGIC;
    motor_s_axi_aresetn : in STD_LOGIC;
    motor_s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    motor_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    motor_s_axi_awvalid : in STD_LOGIC;
    motor_s_axi_awready : out STD_LOGIC;
    motor_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    motor_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    motor_s_axi_wvalid : in STD_LOGIC;
    motor_s_axi_wready : out STD_LOGIC;
    motor_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    motor_s_axi_bvalid : out STD_LOGIC;
    motor_s_axi_bready : in STD_LOGIC;
    motor_s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    motor_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    motor_s_axi_arvalid : in STD_LOGIC;
    motor_s_axi_arready : out STD_LOGIC;
    motor_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    motor_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    motor_s_axi_rvalid : out STD_LOGIC;
    motor_s_axi_rready : in STD_LOGIC
  );

end EES_335_Pid_Motor_Ctrl_0_0;

architecture stub of EES_335_Pid_Motor_Ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_phA,in_phB,out_w_PWMdir,out_w_PWM_p,out_w_PWM_n,motor_s_axi_aclk,motor_s_axi_aresetn,motor_s_axi_awaddr[5:0],motor_s_axi_awprot[2:0],motor_s_axi_awvalid,motor_s_axi_awready,motor_s_axi_wdata[31:0],motor_s_axi_wstrb[3:0],motor_s_axi_wvalid,motor_s_axi_wready,motor_s_axi_bresp[1:0],motor_s_axi_bvalid,motor_s_axi_bready,motor_s_axi_araddr[5:0],motor_s_axi_arprot[2:0],motor_s_axi_arvalid,motor_s_axi_arready,motor_s_axi_rdata[31:0],motor_s_axi_rresp[1:0],motor_s_axi_rvalid,motor_s_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Motor_Ctrl_v1_1,Vivado 2017.4";
begin
end;
