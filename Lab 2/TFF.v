`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 06:49:28 PM
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


module TFF(
    input T,
    input clk,
    output Q
    );

wire out1, out2; 
assign out1 = T ^ out2; 
DFF TFF(.D(out1), .clk(clk), .Q(out2)); 
assign Q = out2; 

endmodule
