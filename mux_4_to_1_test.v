`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 06:04:35 PM
// Design Name: 
// Module Name: mux_4_to_1_test
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


module mux_4_to_1_test();

    reg [3:0]I, SEL;
    wire OUT;
    
    mux_4_to_1 mx(OUT,I,SEL);
    
    initial begin
    
        I[0] = 1'b0; I[1]= 1'b0; I[2]= 1'b0; I[3]= 1'b0; SEL = 2'b00;
        #5
        I[0] = 1'b0; I[1]= 1'b0; I[2]= 1'b0; I[3]= 1'b1; SEL = 2'b01;
        #5
        I[0] = 1'b0; I[1]= 1'b0; I[2]= 1'b1; I[3]= 1'b0; SEL = 2'b10;
        #5
        I[0] = 1'b0; I[1]= 1'b0; I[2]= 1'b1; I[3]= 1'b1; SEL = 2'b10;
        
    end
    
    initial begin
    
        $monitor($time  ,"SEL = %B, I[0] = %B, I[1] = %B, I[2] = %B, I[3] = %B, OUT = %B",SEL,I[0],I[1],I[2],I[3],OUT);
        #200 $finish;
    end     
endmodule
