`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2021 09:55:53 AM
// Design Name: 
// Module Name: Req2Mux
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


module Req2Mux(
    input [3:0] I0, [3:0] I1, [3:0] I2, [3:0] I3,
    input S0, S1,
    output reg [3:0] Y
);

always @ (S0, S1) begin
    case({S0, S1})
        2'd0: Y <= I0;
        2'd1: Y <= I1;
        2'd2: Y <= I2;
        2'd3: Y <= I3;
        default: Y <= 1'd0;
    endcase
end

endmodule
