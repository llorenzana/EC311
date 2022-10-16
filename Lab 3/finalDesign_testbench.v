`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 04:07:50 PM
// Design Name: 
// Module Name: finalDesign_testbench
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


module finalDesign_testbench(

    );
    
    reg button, clk, reset;
    wire [5:0] count;
    
    finalDesign fd1(.count(count), .button(button), .clk(clk), .reset(reset));
    
    always #20 assign clk = ~clk;
    initial 
        begin
            button = 0; clk = 0; reset = 1;
            #20 reset = 0;
            #20 button = 1;
        end
endmodule
