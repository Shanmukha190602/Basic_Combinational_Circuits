`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 04:33:22 PM
// Design Name: 
// Module Name: Half_Adder_test
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


module Half_Adder_test();
    reg A,B;  // In Data flow modelling inputs are of Register type in Test bench
    wire SUM,CARRY; // In Data flow modelling outputs are of wire type in Test bench
    
    // Instantiating the design into test bench
    Half_Adder ha(SUM,CARRY,A,B);
    
    // Applying inputs 
    initial begin
    A= 1'b0;
    B= 1'b0;
    #10
    A= 1'b0;
    B= 1'b1;
    #10
    A= 1'b1;
    B= 1'b0;
    #10
    A= 1'b1;
    B= 1'b1;
  end
  
  // To view the output in console
  initial begin
  $monitor($time,"A= %B, B= %B, SUM= %B, CARRY= %B",A,B,SUM,CARRY);
  #40 $finish;
  end
endmodule
