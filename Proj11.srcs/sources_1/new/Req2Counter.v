`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2021 11:53:24 PM
// Design Name: 
// Module Name: Req2Counter
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


module Req2Counter(
    input Cen,
    input clk,
    input rst,
    output Tc,
    output reg [3:0] Y
);

always @ (posedge(clk), posedge(rst)) begin
    if (rst | Y == 10)
        Y <= 0;
    else if (Cen == 1)
        Y <= Y + 1;
end

assign Tc = (Y == 10);

endmodule
