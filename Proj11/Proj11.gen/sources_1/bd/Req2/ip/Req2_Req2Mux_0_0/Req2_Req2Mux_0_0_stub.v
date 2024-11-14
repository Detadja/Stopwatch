// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 12:56:45 2021
// Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2Mux_0_0/Req2_Req2Mux_0_0_stub.v
// Design      : Req2_Req2Mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Req2Mux,Vivado 2020.2" *)
module Req2_Req2Mux_0_0(I0, I1, I2, I3, S0, S1, Y)
/* synthesis syn_black_box black_box_pad_pin="I0[3:0],I1[3:0],I2[3:0],I3[3:0],S0,S1,Y[3:0]" */;
  input [3:0]I0;
  input [3:0]I1;
  input [3:0]I2;
  input [3:0]I3;
  input S0;
  input S1;
  output [3:0]Y;
endmodule
