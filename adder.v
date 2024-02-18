`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/24 14:47:20
// Design Name: 
// Module Name: adder
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


module adder(
input [3:0] dataA, dataB,
output [3:0] sum,
output carry);
wire [4:0] temp;
assign temp = dataA + dataB;
assign carry = temp[4];
assign sum = temp[3:0];
endmodule
