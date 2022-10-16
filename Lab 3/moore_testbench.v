`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 03:57:50 PM
// Design Name: 
// Module Name: moore_testbench
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


module moore_testbench(

    );
    
    reg [1:0] ain;
    reg clk, reset;
    wire aout;
    
    mooreMachine_task2  mT2(.aout(aout), .ain(ain), .clk(clk), .reset(reset));
    
    always #20 assign clk = ~clk;
    initial 
        begin
            ain = 2'b00; clk = 0; reset = 1;
            #25 reset = 0;
            #40 ain = 2'b00;
            #40 ain = 2'b01;
            #40 ain = 2'b00;
            #40 ain = 2'b10;
            #40 ain = 2'b11;
            #40 ain = 2'b10;
            #40 ain = 2'b11;
            #40 ain = 2'b00;
        end
    
endmodule

