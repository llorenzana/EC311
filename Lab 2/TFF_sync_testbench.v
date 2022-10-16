`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 06:57:54 PM
// Design Name: 
// Module Name: TFF_sync_testbench
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


module TFF_sync_testbench(

    );
    reg T; 
    reg clk; 
    reg reset; 
    wire Q; 
    
    TFF_SyncReset DS1(.T(T), .clk(clk), .s_reset(reset), .Q(Q)); 
    
    initial
        begin 
            clk = 0; 
            forever #10 clk = ~clk; 
        end 
    initial
        begin 
            reset = 1; 
            T <= 0; 
            #100; 
            reset = 0; 
            T <= 1; 
            #100; 
            T <= 0; 
            #100; 
            T <= 1; 
       end   
endmodule
