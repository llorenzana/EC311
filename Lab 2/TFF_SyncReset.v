`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 11:45:06 PM
// Design Name: 
// Module Name: TFF_SyncReset
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


module TFF_SyncReset(
    input T,
    input clk,
    input s_reset,
    output Q
    );

    wire out1, out2; 
    assign out1 = T ^ out2; 
    DFF_SyncReset TFFA (.D(out1), .clk(clk), .s_reset(s_reset), .Q(out2)); 
    assign Q = out2; 
endmodule
