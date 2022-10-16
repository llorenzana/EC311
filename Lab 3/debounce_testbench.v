`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 04:12:01 PM
// Design Name: 
// Module Name: debounce_testbench
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


module debounce_testbench(

    );
    reg button, clk;
    wire clean;
    
    debouncer db1(.button(button), .clk(clk), .clean(clean));
    
    always #20 assign clk = ~clk;
    initial 
        begin
            button = 0; clk = 0;
            #10 button = 1;
            #30 button = 0;
            #20 button = 1;
            #150 button = 0;
            #20 button = 1;
            #80 button = 0;
        end
    
endmodule
