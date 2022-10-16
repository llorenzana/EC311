`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 07:45:07 PM
// Design Name: 
// Module Name: JKFF_Sync_testbench
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


module JKFF_Sync_testbench(

    );
    reg J; 
    reg K;
    reg clk;
    reg reset;
    wire  Q; 
    
    JKFF_SyncReset JKR (.J(J), .K(K), .clk(clk), .s_reset(reset), .Q(Q)); 
    
    initial
        begin 
            clk = 0; 
            forever #10 clk = ~clk; 
        end 
    initial
        begin 
            reset = 1; 
            J <= 0; 
            K <= 0;
            #100; 
            reset = 0; 
            J <= 0;
            K <= 1; 
            #100; 
            J <= 1;
            K <= 0; 
            #100; 
            J <= 1; 
            K <= 1;
       end   
endmodule
