`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 12:07:37 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input x,
    input y,
    input z,
    output C,
    output S
    );
    
    wire w1, w2, w3; 
    
    half_adder a1 (.x(x), .y(y), .C(w2), .S(w1)); 
    half_adder a2 (.x(w1), .y(z), .C(w3), .S(S)); 
    or (C, w3, w2); 
    
    
endmodule
