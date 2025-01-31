`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 19:51:47
// Design Name: 
// Module Name: Ripple_Carry_Adder_tb
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


module Ripple_Carry_Adder_tb();
    reg [3:0]A,B;
    reg c_in;
    wire [3:0]op;
    wire c_op;
    Ripple_Carry_Adder uut(
        .A(A),
        .B(B),
        .c_in(c_in),
        .op(op),
        .c_op(c_op)
    );
    initial 
    begin
        #5 A=4'd5;
        B=4'd5;
        c_in=0;
        #15 A=4'd2;
        A=4'd3;
        c_in=1;
        #15 A=4'd5;
        B=4'd7;
        c_in=0;
        #15 A=4'd5;
        A=4'd3;
        c_in=1;
    end
    
endmodule
