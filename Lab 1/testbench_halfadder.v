`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 05:53:51 PM
// Design Name: 
// Module Name: testbench_halfadder
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


module testbench_halfadder(

    );
    
    reg x, y; 
    wire S, C; 
    
    half_adder add1 (.x(x), .y(y), .C(C), .S(S)); 
    
    initial 
    begin 
        x = 0; y = 0; 
        
        #25 x = 0; y = 1;
        #25 x = 1; y = 0;
        #25 x = 1; y = 1;
        #25 $finish; 
        
   end
    
endmodule
