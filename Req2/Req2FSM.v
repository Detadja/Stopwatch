`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2021 10:04:06 AM
// Design Name: 
// Module Name: Req2FSM
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


module Req2FSM(
    input start,
    input stop,
    input inc,
    input clk,
    input rst,
    output Cen
);

localparam S0 = 2'b00;
localparam S1 = 2'b01;
localparam S2 = 2'b10;
localparam S3 = 2'b11;

reg [1:0] pState, nState;

always @ (pState, start, stop, inc) begin
    case(pState)
        S0: begin
            if (start == 1)
                nState = S1;
            else if (inc == 1 & start == 0)
                nState = S3;
            else if (inc == 0 & start == 0)
                nState = S0;
        end
        S1: begin
            if (stop == 1)
                nState = S0;
            else if (stop == 0)
                nState = S1;
        end
        S2: begin
            if (inc == 1)
               nState = S2;
            else if (inc == 0)
               nState = S0;
        end
        S3:
           nState = S2;
        default:
            nState = S0;
    endcase
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        pState <= S0;
    else
        pState <= nState;
end

assign Cen = (pState == S1 || pState == S3);

endmodule
