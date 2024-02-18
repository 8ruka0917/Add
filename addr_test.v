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
// ���̓f�[�^���������郌�W�X�^
reg [3:0] dataA;
reg [3:0] dataB;
// �o�̓f�[�^�����j�^����
wire [3:0] sum;
wire carry;
// �e�X�g�����H���C���X�^���X�Ƃ��Ēu��
adder dut (
.dataA(dataA), .dataB(dataB), .sum(sum), .carry(carry)
);
// ���̓f�[�^�����낢��ς���
initial begin
dataA <= 0; dataB <= 0;
#10 dataA <= 4'b0000; dataB <= 4'b0001;
#10 dataA <= 4'b0001; dataB <= 4'b0001;
#10 dataA <= 4'b0011; dataB <= 4'b0010;
#10 dataA <= 4'b1111; dataB <= 4'b0001;
#10 $finish;
end
endmodule
