`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 10:18:05 PM
// Design Name: 
// Module Name: clkDiv_testbench
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


module clkDiv_testbench(

    );
    reg clk_in;
	reg rst;
	wire divided_clk;
	reg D; 
    wire Q; 
    DFF_SyncReset DS1(.D(D), .clk(clk_in), .s_reset(rst), .Q(Q)); 
	clk_divider cd1(.clk_in(clk_in), .rst(rst), .divided_clk(divided_clk));

    
    initial
        begin 
            clk_in = 0; 
            forever #10 clk_in = ~clk_in; 
        end 
    initial
        begin 
            rst = 1; 
            D <= 0; 
            #100; 
            rst = 0; 
            D <= 1; 
            #100; 
            D <= 0; 
            #100; 
            D <= 1; 
       end   
	
endmodule
