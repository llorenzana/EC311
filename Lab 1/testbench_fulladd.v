`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 12:12:57 PM
// Design Name: 
// Module Name: testbench_fulladd
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


module testbench_fulladd(
    );
    reg x, y, z; 
    wire C, S; 
    
    full_adder fa1(.x(x), .y(y), .z(z), .C(C), .S(S)); 
    
    initial 
    begin  
        x = 0; y = 0; z = 0; 
        #10  x = 0; y = 0; z = 1; 
        #10  x = 0; y = 1; z = 0;
        #10 x = 0; y = 1; z = 1;
        #10  x = 1; y = 0; z = 0; 
        #10  x = 1; y = 0; z = 1;
        #10 x = 1; y = 1; z = 0;
        #10 x = 1; y = 1; z = 1;
        #10 $finish; 
    end 
    
endmodule
