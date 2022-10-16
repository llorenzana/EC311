`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 12:27:39 PM
// Design Name: 
// Module Name: fourbitadd
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


module fourbitadd(
    input [3:0]A,
    input [3:0]B,
    input Cin,
    output C,
    output [3:0]S
    );
    
    wire C1, C2, C3; 
    
    full_adder FA1(.x(A[0]), .y(B[0]), .z(Cin),.C(C1), .S(S[0]));
    full_adder FA2 (.x(A[1]), .y(B[1]), .z(C1),.C(C2), .S(S[1]));
    full_adder FA3 (.x(A[2]), .y(B[2]), .z(C2),.C(C3), .S(S[2])) ;
    full_adder FA4 (.x(A[3]), .y(B[3]), .z(C3),.C(C), .S(S[3])) ; 
   
endmodule
