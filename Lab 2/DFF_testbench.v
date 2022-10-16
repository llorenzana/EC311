`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 06:33:58 PM
// Design Name: 
// Module Name: DFF_testbench
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


module DFF_testbench(

    );
    
    reg D; 
    reg clk; 
    //reg reset; 
    wire Q; 
    
    DFF D1(.D(D), .clk(clk), .Q(Q)); 
    
    initial
        begin 
            clk = 0; 
            forever #10 clk = ~clk; 
        end 
    initial
        begin 
            D <= 0; 
            #100; 
            D <= 1; 
            #100; 
            D <= 0; 
            #100; 
            D <= 1; 
       end   
endmodule
