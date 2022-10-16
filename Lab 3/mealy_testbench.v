`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2022 06:24:27 PM
// Design Name: 
// Module Name: mealy_testbench
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


module mealy_testbench(

    );
    reg ain;
    reg clock;
    reg reset;
    wire aout;
    mealyMachine_task1 m1 (.ain(ain), .clock(clock), .reset(reset), .aout(aout)); 
    
   initial begin
        clock = 0;
     forever #10 clock = ~clock;  
    end 
    
    initial begin 
        reset = 1;
        ain <= 0;
        #50;
        reset=0;
        ain <= 0;
        #50;
        ain <= 1;
        #50;
        ain <= 1;
        #50;
        ain <= 0;
        #50;
        ain <= 0;
        #50;
        ain <= 1;
        #25
        $finish;
    end 
endmodule 