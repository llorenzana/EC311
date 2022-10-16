`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 10:30:39 PM
// Design Name: 
// Module Name: task3
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


module task3(
    input X,
    input Y,
    input Z,
    input s_reset,
    input clk,
    input S0,
    input S1, 
    output reg T
    );
    wire D00, D01, D02; 
    wire D1, DFFQ1; 
    DFF_SyncReset DFF1 (.D(D1), .clk(clk), .s_reset(s_reset), .Q(D00)); 
    assign D1 = (~D00 ^ X) | (X & D00); 
    assign DFFQ1 = D00; 
    wire T1, TQ1; 
    assign T1 = ((~(D00 & Y)) & TQ1); 
    TFF_SyncReset TFF1(.T(T1), .clk(clk), .s_reset(s_reset), .Q(TQ1)); 
    
    
    wire K1, K2, JKQ1; 
    assign K1 = Y ^ Z;
    assign K2 = ~(K1 & K1); 
    JKFF_SyncReset JKR (.J(T1), .K(K2), .clk(clk), .s_reset(s_reset), .Q(JKQ1)); 

    assign D01 = (TQ1 ^ JKQ1) ^ (TQ1); 
    assign D02 = ~(JKQ1 & JKQ1); 
    assign D03 = 0; 
    
    always @ (DFFQ1, D01, D02, D03, S0, S1)
    begin
        case ({S1,S0})
            2'b00 : T <= D00;
            2'b01 : T <= D01;
            2'b10 : T <= D02;
            2'b11 : T <= D03;
        endcase
    end
    
endmodule
