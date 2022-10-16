`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 01:25:48 PM
// Design Name: 
// Module Name: test_timer
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


module test_timer(

    );
    reg [5:0]in; 
    reg clk; 
    reg reset; 
    reg start_con;
    reg pause;
    reg restart; 
    wire LED;
    wire [6:0] seg; 
    wire [7:0] an; 
    wire myclk;
    wire [5:0] test;
    wire [2:0] outState;
    
    countdownTimer t1(in, clk, reset, start_con, pause, restart, LED, seg, an, myclk, test, outState); 
    
    initial begin
       clk=0;
     forever #20 clk = ~clk; 
    end 
    
    initial begin 
        in = 6'b001010; 
        reset = 0; 
        start_con = 1;
        pause = 0;
        restart = 0;
        #20 
        reset = 1;
        start_con = 0;
        #60
        reset = 0;
        #20
        start_con = 1; 
        #20 
        start_con = 0;
        #100
        pause = 1;
        #30
        pause = 0;
        #30
        restart = 1;
        #30
        restart = 0;
        start_con = 1;
        #40
        start_con = 0;
        #100
        in = 6'b010101; 
    end
    
endmodule
