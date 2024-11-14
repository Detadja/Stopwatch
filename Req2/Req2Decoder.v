`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2021 11:51:20 PM
// Design Name: 
// Module Name: Req2Decoder
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


module Req2Decoder(
    input I0, I1,
    output reg [3:0] seg_an
);

always @ (I0, I1) begin
    case({I0, I1})
        2'd0: seg_an <= 4'b1110;
        2'd1: seg_an <= 4'b1101;
        2'd2: seg_an <= 4'b1011;
        2'd3: seg_an <= 4'b0111;
        default: seg_an <= 4'b1111;
    endcase
end

endmodule
