`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2021 11:52:17 PM
// Design Name: 
// Module Name: Req2_7seg
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


module Req2_7seg(
    input [3:0] Y,
    output reg [6:0] seg_cat
);

always @ (Y) begin
    case (Y) 
    4'b0000: seg_cat <= 7'd64; //0
    4'b0001: seg_cat <= 7'd121; //1
    4'b0010: seg_cat <= 7'd36; //2
    4'b0011: seg_cat <= 7'd48; //3
    4'b0100: seg_cat <= 7'd25; //4
    4'b0101: seg_cat <= 7'd18; //5
    4'b0110: seg_cat <= 7'd2; //6
    4'b0111: seg_cat <= 7'd120; //7
    4'b1000: seg_cat <= 7'd0; //8
    4'b1001: seg_cat <= 7'd16; //9
    default: seg_cat <= 7'd64;
    endcase
end

endmodule
