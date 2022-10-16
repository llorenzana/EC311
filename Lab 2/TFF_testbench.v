`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 07:15:21 PM
// Design Name: 
// Module Name: TFF_testbench
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


module TFF_testbench(

    );
     reg T; 
    reg clk; 
    //reg reset; 
    wire Q; 
    
    TFF T1(.T(T), .clk(clk), .Q(Q)); 
    
    initial
        begin 
            clk = 0; 
            forever #10 clk = ~clk; 
        end 
    initial
        begin 
            T <= 0; 
            #100; 
            T <= 1; 
            #100; 
            T <= 0; 
            #100; 
            T <= 1; 
       end   
endmodule
