`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 05:18:29 PM
// Design Name: 
// Module Name: mux_2_to_1_test
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


module mux_2_to_1_test();

    reg [1:0]I, SEL;
    wire OUT;
    
    mux_2_to_1 mu(OUT,I,SEL);
    
    initial begin
    
        I[0]=1'b0; I[1]=1'b0; SEL=1'b0;
        #5
        I[0]=1'b0; I[1]=1'b1; SEL=1'b0;
        #5
        I[0]=1'b1; I[1]=1'b0; SEL=1'b0;
        #5
        I[0]=1'b1; I[1]=1'b1; SEL=1'b0;
        #10
        I[0]=1'b0; I[1]=1'b0; SEL=1'b1;
        #5
        I[0]=1'b0; I[1]=1'b1; SEL=1'b1;
        #5
        I[0]=1'b1; I[1]=1'b0; SEL=1'b1;
        #5
        I[0]=1'b1; I[1]=1'b1; SEL=1'b1;
    end
    
      // To view the output in console
  initial begin
      $monitor($time,"SEL = %B, I[0] = %B, I[1] = %B, OUT = %B", SEL, I[0],I[1],OUT);
      #80 $finish;
  end
endmodule
