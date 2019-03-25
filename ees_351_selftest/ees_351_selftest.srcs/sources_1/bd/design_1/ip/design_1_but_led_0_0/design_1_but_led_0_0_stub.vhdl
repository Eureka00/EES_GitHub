-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Oct 20 10:56:31 2018
-- Host        : DESKTOP-NPCV5OK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/EES_351/ees_351_selftest/ees_351_selftest.srcs/sources_1/bd/design_1/ip/design_1_but_led_0_0/design_1_but_led_0_0_stub.vhdl
-- Design      : design_1_but_led_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_but_led_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    an : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sw4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_but_led_0_0;

architecture stub of design_1_but_led_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,an[5:0],sw4[3:0],led[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "but_led,Vivado 2017.4";
begin
end;