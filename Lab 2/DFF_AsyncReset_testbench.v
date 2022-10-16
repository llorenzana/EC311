`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 06:45:38 PM
// Design Name: 
// Module Name: DFF_AsyncReset_testbench
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


module DFF_AsyncReset_testbench(

    );
    reg D; 
    reg clk; 
    reg reset; 
    wire Q; 
    
    DFF_AsyncReset DA1(.D(D), .clk(clk), .a_reset(reset), .Q(Q)); 
    
    initial
        begin 
            clk = 0; 
            forever #10 clk = ~clk; 
        end 
    initial
        begin 
            reset = 1; 
            D <= 0; 
            #100; 
            reset = 0; 
            D <= 1; 
            #100; 
            D <= 0; 
            #100; 
            D <= 1; 
       end   
endmodule
