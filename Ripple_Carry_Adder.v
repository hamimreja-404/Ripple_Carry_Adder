`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 19:50:17
// Design Name: 
// Module Name: Ripple_Carry_Adder
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


module Ripple_Carry_Adder(
    input [3:0] A, B,
    input c_in,
    output [3:0] op,
    output c_op
    );
    wire c1, c2, c3;
    full_adder f0(A[0], B[0], c_in, op[0], c1);
    full_adder f1(A[1], B[1], c1, op[1], c2);
    full_adder f2(A[2], B[2], c2, op[2], c3);
    full_adder f3(A[3], B[3], c3, op[3], c_op);
endmodule

module full_adder(
    input A, B, Cin,
    output sum, carry
);
    assign sum = A ^ B ^ Cin;            // XOR for sum
    assign carry = (A & B) | (B & Cin) | (A & Cin); // Carry logic
endmodule

