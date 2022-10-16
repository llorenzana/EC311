`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 07:53:18 PM
// Design Name: 
// Module Name: JKFF_AsyncReset
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


module JKFF_AsyncReset(
    input J, 
    input K, 
    input clk, 
    input a_reset,
    output Q
    );
    
    wire JFF, out1; 
    
    DFF_AsyncReset JKFFAsync (.D(JFF), .clk(clk), .a_reset(a_reset), .Q(out1)); 
    assign  JFF = (J & ~Q) | (~K & Q); 
    assign Q = out1; 
endmodule
