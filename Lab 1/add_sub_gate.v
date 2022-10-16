`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 12:56:33 PM
// Design Name: 
// Module Name: add_sub_gate
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


module add_sub_gate(
    input [3:0] A,
    input [3:0] B,
    input M,
    output C,
    output [3:0]S,
    output V
    ); 
    
    wire B0, B1, B2, B3; 
    wire C1, C2, C3; 
    
    xor G1(B0, B[0], M); 
    xor G2(B1, B[1], M); 
    xor G3(B2, B[2], M); 
    xor G4(B3, B[3], M); 

    full_adder FA1 (.x(A[0]), .y(B0), .z(M), .C(C1), .S(S[0]));
    full_adder FA2 (.x(A[1]), .y(B1), .z(C1), .C(C2), .S(S[1]));
    full_adder FA3 (.x(A[2]), .y(B2), .z(C2), .C(C3), .S(S[2])) ;
    full_adder FA4 (.x(A[3]), .y(B3), .z(C3), .C(C), .S(S[3])) ; 
   
    xor G5(V, C3, C); 
    
endmodule
