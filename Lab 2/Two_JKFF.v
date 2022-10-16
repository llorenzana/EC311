`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 08:01:26 PM
// Design Name: 
// Module Name: Two_JKFF
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


module Two_JKFF(
    input J,
    input K, 
    input reset, 
    input clock,
    output Q_syn,
    output Q_asyn
    );
    
    JKFF_AsyncReset JKA1 (.J(J), .K(K), .clk(clock), .a_reset(reset), .Q(Q_asyn)); 
    JKFF_SyncReset  JKA2 (.J(J), .K(K), .clk(clock), .s_reset(reset), .Q(Q_syn));
    
endmodule
