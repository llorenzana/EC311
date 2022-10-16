`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 06:29:32 PM
// Design Name: 
// Module Name: DFF_SyncReset
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


module DFF_SyncReset(
    input D,
    input clk,
    input s_reset,
    output reg Q
    );
    
    always @(posedge clk) 
    begin 
        if (s_reset == 1'b1) 
            Q <= 1'b0; 
        else 
            Q <= D; 
    end 
endmodule
