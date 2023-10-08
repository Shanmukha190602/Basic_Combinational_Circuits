`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 05:49:31 PM
// Design Name: 
// Module Name: mux_4_to_1
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


module mux_4_to_1(OUT, I,SEL);

    output OUT;
    input [3:0]I;
    input [1:0]SEL;
    wire [1:0]t;
    mux_2_to_1 mo(t[0],I[1:0],SEL[0]);
    mux_2_to_1 m1(t[1],I[3:2],SEL[0]);
    mux_2_to_1 m2(OUT, t[1:0],SEL[1]);
endmodule
