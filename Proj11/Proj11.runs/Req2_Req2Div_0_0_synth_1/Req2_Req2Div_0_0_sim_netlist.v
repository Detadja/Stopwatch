// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 20:18:13 2021
// Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Req2_Req2Div_0_0_sim_netlist.v
// Design      : Req2_Req2Div_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Req2Div
   (clk_1hz,
    clk,
    rst);
  output clk_1hz;
  input clk;
  input rst;

  wire clk;
  wire clk_1hz;
  wire clk_1hz_i_1_n_0;
  wire clk_1hz_i_2_n_0;
  wire clk_1hz_i_3_n_0;
  wire clk_1hz_i_4_n_0;
  wire clk_1hz_i_5_n_0;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [22:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire rst;
  wire [3:2]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[20]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFF7F0080)) 
    clk_1hz_i_1
       (.I0(clk_1hz_i_2_n_0),
        .I1(clk_1hz_i_3_n_0),
        .I2(clk_1hz_i_4_n_0),
        .I3(clk_1hz_i_5_n_0),
        .I4(clk_1hz),
        .O(clk_1hz_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    clk_1hz_i_2
       (.I0(count_reg[3]),
        .I1(count_reg[6]),
        .I2(count_reg[8]),
        .I3(count_reg[2]),
        .I4(count_reg[0]),
        .I5(count_reg[1]),
        .O(clk_1hz_i_2_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    clk_1hz_i_3
       (.I0(count_reg[7]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(count_reg[15]),
        .I4(count_reg[9]),
        .I5(count_reg[14]),
        .O(clk_1hz_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    clk_1hz_i_4
       (.I0(count_reg[21]),
        .I1(count_reg[22]),
        .I2(count_reg[18]),
        .I3(count_reg[19]),
        .I4(count_reg[20]),
        .O(clk_1hz_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_1hz_i_5
       (.I0(count_reg[12]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(count_reg[17]),
        .I4(count_reg[13]),
        .I5(count_reg[16]),
        .O(clk_1hz_i_5_n_0));
  FDCE clk_1hz_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(clk_1hz_i_1_n_0),
        .Q(clk_1hz));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[0]_i_3 
       (.I0(count_reg[3]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[0]_i_4 
       (.I0(count_reg[2]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[0]_i_5 
       (.I0(count_reg[1]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55551555)) 
    \count[0]_i_6 
       (.I0(count_reg[0]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[12]_i_3 
       (.I0(count_reg[14]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[12]_i_4 
       (.I0(count_reg[13]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[12]_i_5 
       (.I0(count_reg[12]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[16]_i_2 
       (.I0(count_reg[19]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[16]_i_3 
       (.I0(count_reg[18]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[16]_i_4 
       (.I0(count_reg[17]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[16]_i_5 
       (.I0(count_reg[16]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[20]_i_2 
       (.I0(count_reg[22]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[20]_i_3 
       (.I0(count_reg[21]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[20]_i_4 
       (.I0(count_reg[20]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[4]_i_2 
       (.I0(count_reg[7]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[4]_i_3 
       (.I0(count_reg[6]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[4]_i_4 
       (.I0(count_reg[5]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[4]_i_5 
       (.I0(count_reg[4]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[8]_i_2 
       (.I0(count_reg[11]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[8]_i_3 
       (.I0(count_reg[10]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[8]_i_4 
       (.I0(count_reg[9]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count[8]_i_5 
       (.I0(count_reg[8]),
        .I1(clk_1hz_i_2_n_0),
        .I2(clk_1hz_i_3_n_0),
        .I3(clk_1hz_i_4_n_0),
        .I4(clk_1hz_i_5_n_0),
        .O(\count[8]_i_5_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_2_n_0 }),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 }));
  FDCE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]));
  FDCE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]));
  FDCE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDCE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]));
  FDCE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]));
  FDCE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]));
  FDCE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDCE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]));
  FDCE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]));
  FDCE \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]));
  FDCE \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_reg[20]_i_1_CO_UNCONNECTED [3:2],\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1_O_UNCONNECTED [3],\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({1'b0,\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 }));
  FDCE \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]));
  FDCE \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]));
  FDCE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]));
endmodule

(* CHECK_LICENSE_TYPE = "Req2_Req2Div_0_0,Req2Div,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Req2Div,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    clk_1hz);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Req2_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output clk_1hz;

  wire clk;
  wire clk_1hz;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Req2Div inst
       (.clk(clk),
        .clk_1hz(clk_1hz),
        .rst(rst));
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
