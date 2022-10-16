`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 08:05:53 PM
// Design Name: 
// Module Name: TwoJKFF_testbench
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


module TwoJKFF_testbench(

    );
    reg J; 
    reg K;
    reg clock;
    reg reset;
    wire  Q_asyn;
    wire Q_syn; 
    
    Two_JKFF JKR (.J(J), .K(K), .clock(clock), .reset(reset), .Q_syn(Q_syn), .Q_asyn(Q_asyn)); 
    
    initial
        begin 
            clock = 0; 
            forever #10 clock = ~clock; 
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
            reset = 1; 
            J <= 1; 
            K <= 1;
       end   
endmodule
