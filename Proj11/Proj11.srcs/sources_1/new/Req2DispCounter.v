`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2021 09:57:09 AM
// Design Name: 
// Module Name: Req2DispCounter
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


module Req2DispCounter(
    input disp_clk,
    output reg B0, B1
);

localparam terminalcount = (25000 - 1);
reg [15:0] count;
wire tc;
assign tc = (count == terminalcount);

always @ (posedge(disp_clk)) begin
    if (tc) begin
        count <= 0;
        {B0, B1} <= {B0, B1} + 1;
    end
    else
        count <= count + 1;
end

endmodule
