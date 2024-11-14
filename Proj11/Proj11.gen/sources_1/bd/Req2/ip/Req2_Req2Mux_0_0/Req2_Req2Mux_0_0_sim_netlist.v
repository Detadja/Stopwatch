// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 12:56:45 2021
// Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2Mux_0_0/Req2_Req2Mux_0_0_sim_netlist.v
// Design      : Req2_Req2Mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Req2_Req2Mux_0_0,Req2Mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Req2Mux,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Req2_Req2Mux_0_0
   (I0,
    I1,
    I2,
    I3,
    S0,
    S1,
    Y);
  input [3:0]I0;
  input [3:0]I1;
  input [3:0]I2;
  input [3:0]I3;
  input S0;
  input S1;
  output [3:0]Y;

  wire [3:0]I0;
  wire [3:0]I1;
  wire [3:0]I2;
  wire [3:0]I3;
  wire S0;
  wire S1;
  wire [3:0]Y;

  Req2_Req2Mux_0_0_Req2Mux inst
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S0(S0),
        .S1(S1),
        .Y(Y));
endmodule

(* ORIG_REF_NAME = "Req2Mux" *) 
module Req2_Req2Mux_0_0_Req2Mux
   (Y,
    I1,
    I0,
    I3,
    S0,
    S1,
    I2);
  output [3:0]Y;
  input [3:0]I1;
  input [3:0]I0;
  input [3:0]I3;
  input S0;
  input S1;
  input [3:0]I2;

  wire [3:0]I0;
  wire [3:0]I1;
  wire [3:0]I2;
  wire [3:0]I3;
  wire S0;
  wire S1;
  wire [3:0]Y;

  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Y[0]_INST_0 
       (.I0(I1[0]),
        .I1(I0[0]),
        .I2(I3[0]),
        .I3(S0),
        .I4(S1),
        .I5(I2[0]),
        .O(Y[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Y[1]_INST_0 
       (.I0(I1[1]),
        .I1(I0[1]),
        .I2(I3[1]),
        .I3(S0),
        .I4(S1),
        .I5(I2[1]),
        .O(Y[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Y[2]_INST_0 
       (.I0(I1[2]),
        .I1(I0[2]),
        .I2(I3[2]),
        .I3(S0),
        .I4(S1),
        .I5(I2[2]),
        .O(Y[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Y[3]_INST_0 
       (.I0(I1[3]),
        .I1(I0[3]),
        .I2(I3[3]),
        .I3(S0),
        .I4(S1),
        .I5(I2[3]),
        .O(Y[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
