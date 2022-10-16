`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 04:55:16 PM
// Design Name: 
// Module Name: four_bitaddSub_behavior
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


module addsub_Behavior(
    input [3:0] A,
    input [3:0] B,
    input M,
    output [4:0]Sum
    ); 
        
    assign Sum = M ? A + (~B + 1'b1) : A + B; 
    
endmodule
