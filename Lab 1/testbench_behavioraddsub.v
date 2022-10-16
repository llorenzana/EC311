`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 07:00:42 PM
// Design Name: 
// Module Name: testbench_behavioraddsub
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


module testbench_behavioraddsub(

    );
    
    reg [3:0] A;
    reg [3:0] B;
    reg M;
    wire [4:0]Sum;
    
    addsub_Behavior AS1(.A(A), .B(B), .M(M), .Sum(Sum)); 
    
    initial begin 
        A = 0; B = 0; M = 0; 
        #20 A = 4'b0100; B = 4'b0011; M = 0;
        #20 A = 4'b0101; B = 4'b0110; M = 0;
        #20 A = 4'b0101; B = 4'b1000; M = 1;
        #20 A = 4'b0100; B = 4'b1011; M = 0;
        #20 A = 4'b0011; B = 4'b1111; M = 1;
        #20 A = 4'b1001; B = 4'b1010; M = 0;
        #20 A = 4'b1111; B = 4'b1110; M = 0;
        #20 A = 4'b1111; B = 4'b1011; M = 1;
        #20 $finish;
    end  
  
endmodule
