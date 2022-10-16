`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 04:05:28 PM
// Design Name: 
// Module Name: finalDesign
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


module finalDesign(
    output [5:0] count,
    input button,
    input clk,
    input reset
    );
    
    wire clean;
    
    debouncer db(.clean(clean), .button(button), .clk(clk));
    fibonacciCounter fb(.aout(count), .ain(clean), .clk(clk), .reset(reset));
    
endmodule
