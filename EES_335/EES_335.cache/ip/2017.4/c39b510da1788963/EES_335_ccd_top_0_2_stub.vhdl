-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Sep 25 17:12:12 2018
-- Host        : yang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ EES_335_ccd_top_0_2_stub.vhdl
-- Design      : EES_335_ccd_top_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pclk : in STD_LOGIC;
    href : in STD_LOGIC;
    vsync : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vga : out STD_LOGIC_VECTOR ( 13 downto 0 );
    xclk : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,pclk,href,vsync,d[7:0],vga[13:0],xclk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ccd_top,Vivado 2017.4";
begin
end;
