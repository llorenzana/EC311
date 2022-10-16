`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 04:09:48 PM
// Design Name: 
// Module Name: fibCounter_testbench
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


module fibCounter_testbench(

    );
    
    reg ain, clk, reset;
    wire [5:0] aout;
    
    fibonacciCounter fc1(.aout(aout), .ain(ain), .clk(clk), .reset(reset));
    
    always #20 assign clk = ~clk;
    initial 
    begin
        ain = 0; clk = 0; reset = 1;
        #5 reset = 0;
        #10 ain = 1;
        #70 ain = 0;
        #90 ain = 1;
    end
endmodule
