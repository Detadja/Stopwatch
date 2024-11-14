// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 21 07:18:19 2021
// Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2FSM_0_0/Req2_Req2FSM_0_0_stub.v
// Design      : Req2_Req2FSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Req2FSM,Vivado 2020.2" *)
module Req2_Req2FSM_0_0(start, stop, inc, clk, rst, Cen)
/* synthesis syn_black_box black_box_pad_pin="start,stop,inc,clk,rst,Cen" */;
  input start;
  input stop;
  input inc;
  input clk;
  input rst;
  output Cen;
endmodule
