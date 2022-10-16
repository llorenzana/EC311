`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 07:05:50 PM
// Design Name: 
// Module Name: TFF_AsyncReset
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


module TFF_AsyncReset(
    input T,
    input clk,
    input a_reset,
    output Q
    );

    wire out1, out2; 
    assign out1 = T ^ out2; 
    DFF_AsyncReset TFFA (.D(out1), .clk(clk), .a_reset(a_reset), .Q(out2)); 
    assign Q = out2; 
    
endmodule
