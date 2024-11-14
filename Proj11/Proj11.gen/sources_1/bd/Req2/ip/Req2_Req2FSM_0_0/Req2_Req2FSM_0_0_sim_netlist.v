// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 21 07:18:19 2021
// Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2FSM_0_0/Req2_Req2FSM_0_0_sim_netlist.v
// Design      : Req2_Req2FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Req2_Req2FSM_0_0,Req2FSM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Req2FSM,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Req2_Req2FSM_0_0
   (start,
    stop,
    inc,
    clk,
    rst,
    Cen);
  input start;
  input stop;
  input inc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output Cen;

  wire Cen;
  wire clk;
  wire inc;
  wire rst;
  wire start;
  wire stop;

  Req2_Req2FSM_0_0_Req2FSM inst
       (.Cen(Cen),
        .clk(clk),
        .inc(inc),
        .rst(rst),
        .start(start),
        .stop(stop));
endmodule

(* ORIG_REF_NAME = "Req2FSM" *) 
module Req2_Req2FSM_0_0_Req2FSM
   (Cen,
    clk,
    rst,
    inc,
    start,
    stop);
  output Cen;
  input clk;
  input rst;
  input inc;
  input start;
  input stop;

  wire Cen;
  wire clk;
  wire inc;
  wire [1:0]nState__0;
  wire [1:0]pState;
  wire rst;
  wire start;
  wire stop;

  LUT2 #(
    .INIT(4'h6)) 
    Cen_INST_0
       (.I0(pState[0]),
        .I1(pState[1]),
        .O(Cen));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA0FCAFFC)) 
    \FSM_sequential_pState[0]_i_1 
       (.I0(inc),
        .I1(start),
        .I2(pState[1]),
        .I3(pState[0]),
        .I4(stop),
        .O(nState__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA0BA)) 
    \FSM_sequential_pState[1]_i_1 
       (.I0(pState[1]),
        .I1(start),
        .I2(inc),
        .I3(pState[0]),
        .O(nState__0[1]));
  (* FSM_ENCODED_STATES = "S1:01,S2:11,S0:00,S3:10" *) 
  FDCE \FSM_sequential_pState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(nState__0[0]),
        .Q(pState[0]));
  (* FSM_ENCODED_STATES = "S1:01,S2:11,S0:00,S3:10" *) 
  FDCE \FSM_sequential_pState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(nState__0[1]),
        .Q(pState[1]));
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
