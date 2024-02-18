`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/24 14:57:42
// Design Name: 
// Module Name: addr_test
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


module addr_test();
// 入力データを供給するレジスタ
reg [3:0] dataA;
reg [3:0] dataB;
// 出力データをモニタする
wire [3:0] sum;
wire carry;
// テストする回路をインスタンスとして置く
adder dut (
.dataA(dataA), .dataB(dataB), .sum(sum), .carry(carry)
);
// 入力データをいろいろ変える
initial begin
dataA <= 0; dataB <= 0;
#10 dataA <= 4'b0000; dataB <= 4'b0001;
#10 dataA <= 4'b0001; dataB <= 4'b0001;
#10 dataA <= 4'b0011; dataB <= 4'b0010;
#10 dataA <= 4'b1111; dataB <= 4'b0001;
#10 $finish;
end
endmodule
