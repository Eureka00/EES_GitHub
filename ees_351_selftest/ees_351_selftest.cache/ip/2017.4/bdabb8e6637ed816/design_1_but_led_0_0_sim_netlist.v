// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Oct 19 16:15:05 2018
// Host        : DESKTOP-NPCV5OK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_but_led_0_0_sim_netlist.v
// Design      : design_1_but_led_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_but_led
   (led,
    an,
    clk,
    sw4);
  output [3:0]led;
  input [5:0]an;
  input clk;
  input [3:0]sw4;

  wire [5:0]an;
  wire [5:0]an_r;
  wire clk;
  wire [3:0]led;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire \led[3]_i_2_n_0 ;
  wire \led[3]_i_3_n_0 ;
  wire [3:0]sw4;

  FDRE \an_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(an[0]),
        .Q(an_r[0]),
        .R(1'b0));
  FDRE \an_r_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(an[1]),
        .Q(an_r[1]),
        .R(1'b0));
  FDRE \an_r_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(an[2]),
        .Q(an_r[2]),
        .R(1'b0));
  FDRE \an_r_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(an[3]),
        .Q(an_r[3]),
        .R(1'b0));
  FDRE \an_r_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(an[4]),
        .Q(an_r[4]),
        .R(1'b0));
  FDRE \an_r_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(an[5]),
        .Q(an_r[5]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \led[0]_i_1 
       (.I0(\led[3]_i_3_n_0 ),
        .I1(\led[3]_i_2_n_0 ),
        .O(\led[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \led[1]_i_1 
       (.I0(sw4[1]),
        .I1(sw4[2]),
        .I2(sw4[0]),
        .I3(sw4[3]),
        .I4(\led[3]_i_3_n_0 ),
        .I5(\led[3]_i_2_n_0 ),
        .O(\led[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080800)) 
    \led[2]_i_1 
       (.I0(\led[3]_i_2_n_0 ),
        .I1(\led[3]_i_3_n_0 ),
        .I2(sw4[3]),
        .I3(sw4[0]),
        .I4(sw4[2]),
        .I5(sw4[1]),
        .O(\led[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080800)) 
    \led[3]_i_1 
       (.I0(\led[3]_i_2_n_0 ),
        .I1(\led[3]_i_3_n_0 ),
        .I2(sw4[2]),
        .I3(sw4[0]),
        .I4(sw4[3]),
        .I5(sw4[1]),
        .O(\led[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \led[3]_i_2 
       (.I0(an_r[5]),
        .I1(an_r[4]),
        .I2(an_r[1]),
        .I3(an_r[0]),
        .I4(an_r[3]),
        .I5(an_r[2]),
        .O(\led[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \led[3]_i_3 
       (.I0(an[5]),
        .I1(an[4]),
        .I2(an[1]),
        .I3(an[0]),
        .I4(an[3]),
        .I5(an[2]),
        .O(\led[3]_i_3_n_0 ));
  FDRE \led_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDRE \led_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(1'b0));
  FDRE \led_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(1'b0));
  FDRE \led_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[3]_i_1_n_0 ),
        .Q(led[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_but_led_0_0,but_led,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "but_led,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    an,
    sw4,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input clk;
  input [5:0]an;
  input [3:0]sw4;
  output [3:0]led;

  wire [5:0]an;
  wire clk;
  wire [3:0]led;
  wire [3:0]sw4;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_but_led inst
       (.an(an),
        .clk(clk),
        .led(led),
        .sw4(sw4));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif