`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 10:16:33 PM
// Design Name: 
// Module Name: Req1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Req1_tb();

reg A;
reg B;
reg clk;
reg rst;

wire F;
wire Cout;

Req1 CUT(
    .A(A),
    .B(B),
    .clk(clk),
    .rst(rst),
    .F(F),
    .Cout(Cout)
);

always
    #5 clk = ~clk;

initial begin
    A = 0;
    B = 0;
    clk = 0;
    rst = 1;
    
    #10 rst = 0; 
    #10; //A and B are not asserted, stay at S0
    
    //A and B are asserted, moving to S2
    #10 A = 1;
    B = 1;
    #10 A = 0; //A is not asserted but B is, stay at S2
    
    #10 rst = 1; //Reset to S0
    #10 rst = 0; //A still not asserted and B is, moving to S1
    
    #10; //A and B unchanged, stay at S1
    #10 B = 0; //A and B are not asserted, moving to S0
    
    //A and B are asserted, moving to S2
    #10 A = 1;
    B = 1; 
    #10 //A and B are still asserted, moving to S3
    #10 //A and B are still asserted, stay at S3
    
    //A and B are not asserted, moving to S1
    #10 A = 0;
    B = 0;
    
    //A and B are asserted, moving to S2
    #10 A = 1;
    B = 1; 
    
    //A and B are not asserted, moving to S1
    #10 A = 0;
    B = 0;
    
    #10 rst = 1; //Reset to S0
end

endmodule
