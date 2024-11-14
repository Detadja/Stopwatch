//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Apr 21 07:17:00 2021
//Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
//Command     : generate_target Req2.bd
//Design      : Req2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Req2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Req2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Req2.hwdef" *) 
module Req2
   (clk,
    inc,
    rst,
    seg_an,
    seg_cat,
    start,
    stop);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN Req2_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input inc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;
  output [3:0]seg_an;
  output [6:0]seg_cat;
  input start;
  input stop;

  wire Req2Counter_0_Tc;
  wire [3:0]Req2Counter_0_Y;
  wire Req2Counter_1_Tc;
  wire [3:0]Req2Counter_1_Y;
  wire Req2Counter_2_Tc;
  wire [3:0]Req2Counter_2_Y;
  wire [3:0]Req2Counter_3_Y;
  wire [3:0]Req2Decoder_0_seg_an;
  wire Req2DispCounter_0_B0;
  wire Req2DispCounter_0_B1;
  wire Req2Div_0_clk_1hz;
  wire Req2FSM_0_Cen;
  wire [3:0]Req2Mux_0_Y;
  wire [6:0]Req2_7seg_0_seg_cat;
  wire clk_1;
  wire inc_0_1;
  wire rst_0_1;
  wire start_0_1;
  wire stop_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign clk_1 = clk;
  assign inc_0_1 = inc;
  assign rst_0_1 = rst;
  assign seg_an[3:0] = Req2Decoder_0_seg_an;
  assign seg_cat[6:0] = Req2_7seg_0_seg_cat;
  assign start_0_1 = start;
  assign stop_0_1 = stop;
  Req2_Req2Counter_0_0 Req2Counter_0
       (.Cen(Req2FSM_0_Cen),
        .Tc(Req2Counter_0_Tc),
        .Y(Req2Counter_0_Y),
        .clk(Req2Div_0_clk_1hz),
        .rst(rst_0_1));
  Req2_Req2Counter_0_1 Req2Counter_1
       (.Cen(util_vector_logic_0_Res),
        .Tc(Req2Counter_1_Tc),
        .Y(Req2Counter_1_Y),
        .clk(Req2Div_0_clk_1hz),
        .rst(rst_0_1));
  Req2_Req2Counter_0_2 Req2Counter_2
       (.Cen(util_vector_logic_1_Res),
        .Tc(Req2Counter_2_Tc),
        .Y(Req2Counter_2_Y),
        .clk(Req2Div_0_clk_1hz),
        .rst(rst_0_1));
  Req2_Req2Counter_0_3 Req2Counter_3
       (.Cen(util_vector_logic_2_Res),
        .Y(Req2Counter_3_Y),
        .clk(Req2Div_0_clk_1hz),
        .rst(rst_0_1));
  Req2_Req2Decoder_0_0 Req2Decoder_0
       (.I0(Req2DispCounter_0_B0),
        .I1(Req2DispCounter_0_B1),
        .seg_an(Req2Decoder_0_seg_an));
  Req2_Req2DispCounter_0_0 Req2DispCounter_0
       (.B0(Req2DispCounter_0_B0),
        .B1(Req2DispCounter_0_B1),
        .disp_clk(clk_1));
  Req2_Req2Div_0_0 Req2Div_0
       (.clk(clk_1),
        .clk_1hz(Req2Div_0_clk_1hz),
        .rst(rst_0_1));
  Req2_Req2FSM_0_0 Req2FSM_0
       (.Cen(Req2FSM_0_Cen),
        .clk(Req2Div_0_clk_1hz),
        .inc(inc_0_1),
        .rst(rst_0_1),
        .start(start_0_1),
        .stop(stop_0_1));
  Req2_Req2Mux_0_0 Req2Mux_0
       (.I0(Req2Counter_0_Y),
        .I1(Req2Counter_1_Y),
        .I2(Req2Counter_2_Y),
        .I3(Req2Counter_3_Y),
        .S0(Req2DispCounter_0_B0),
        .S1(Req2DispCounter_0_B1),
        .Y(Req2Mux_0_Y));
  Req2_Req2_7seg_0_0 Req2_7seg_0
       (.Y(Req2Mux_0_Y),
        .seg_cat(Req2_7seg_0_seg_cat));
  Req2_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Req2FSM_0_Cen),
        .Op2(Req2Counter_0_Tc),
        .Res(util_vector_logic_0_Res));
  Req2_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(Req2FSM_0_Cen),
        .Op2(Req2Counter_1_Tc),
        .Res(util_vector_logic_1_Res));
  Req2_util_vector_logic_0_2 util_vector_logic_2
       (.Op1(Req2FSM_0_Cen),
        .Op2(Req2Counter_2_Tc),
        .Res(util_vector_logic_2_Res));
endmodule
