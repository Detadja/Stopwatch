//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Apr 21 07:17:00 2021
//Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
//Command     : generate_target Req2_wrapper.bd
//Design      : Req2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Req2_wrapper
   (clk,
    inc,
    rst,
    seg_an,
    seg_cat,
    start,
    stop);
  input clk;
  input inc;
  input rst;
  output [3:0]seg_an;
  output [6:0]seg_cat;
  input start;
  input stop;

  wire clk;
  wire inc;
  wire rst;
  wire [3:0]seg_an;
  wire [6:0]seg_cat;
  wire start;
  wire stop;

  Req2 Req2_i
       (.clk(clk),
        .inc(inc),
        .rst(rst),
        .seg_an(seg_an),
        .seg_cat(seg_cat),
        .start(start),
        .stop(stop));
endmodule
