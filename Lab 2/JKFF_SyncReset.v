`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 07:21:20 PM
// Design Name: 
// Module Name: JKFF_SyncReset
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


module JKFF_SyncReset(
    input J, 
    input K, 
    input clk, 
    input s_reset,
    output Q
    );
    
    wire JFF, out1; 
    
    DFF_SyncReset JKFFSync (.D(JFF), .clk(clk), .s_reset(s_reset), .Q(out1)); 
    assign  JFF = (J & ~Q) | (~K & Q); 
    assign Q = out1; 
    
endmodule
