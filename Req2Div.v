`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2021 10:07:20 AM
// Design Name: 
// Module Name: Req2Div
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


module Req2Div(
    input clk,
    input rst,
    output reg clk_1hz
);

localparam terminalcount = (50000 - 1);
reg [22:0] count;
wire tc;
assign tc = (count == terminalcount);

always @ (posedge(clk), posedge(rst)) begin
    if (rst) begin
        count <= 0;
        clk_1hz <= 0;
    end
    else if (tc) begin
        count <= 0;
        clk_1hz <= !clk_1hz;
    end
    else
        count <= count + 1;
end

endmodule
