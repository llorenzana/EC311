`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 06:08:20 PM
// Design Name: 
// Module Name: TFF_FPGA
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


module TFF_FPGA(
    input T,
    input clk,
    input a_reset,
    output Q,
    output d_clk
    );
    wire divided_clk;
    clk_divider cd1(.clk_in(clk), .rst(a_reset), .divided_clk(divided_clk));
    wire out1, out2; 
    assign out1 = T ^ out2; 
    DFF_AsyncReset TFFA (.D(out1), .clk(divided_clk), .a_reset(a_reset), .Q(out2)); 
    assign Q = out2; 
    assign d_clk = divided_clk; 
endmodule
