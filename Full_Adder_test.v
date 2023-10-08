`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 04:56:48 PM
// Design Name: 
// Module Name: Full_Adder_test
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


module Full_Adder_test();

    reg A,B,C;
     wire SUM,CARRY;
      
     Full_Adder fa(SUM,CARRY,A,B,C);
     
    initial begin
        A= 1'b0; B= 1'b0; C= 1'b0;
        #10
        A= 1'b0; B= 1'b0; C= 1'b1;
        #10
        A= 1'b0; B= 1'b1; C= 1'b0;
        #10
        A= 1'b0; B= 1'b1; C= 1'b1;
        #10
        A= 1'b1; B= 1'b0; C= 1'b0;
        #10
        A= 1'b1; B= 1'b0; C= 1'b1;
        #10
        A= 1'b1; B= 1'b1; C= 1'b0;
        #10
        A= 1'b1; B= 1'b1; C= 1'b1;
   end
  
  // To view the output in console
  initial begin
  $monitor($time,"A= %B, B= %B, C= %B, SUM= %B, CARRY= %B",A,B,C,SUM,CARRY);
  #80 $finish;
  end

endmodule
