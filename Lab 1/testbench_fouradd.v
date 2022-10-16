`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 12:39:41 PM
// Design Name: 
// Module Name: testbench_fouradd
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


module testbench_fouradd(

    );
    
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire C;
    wire [3:0] S; 
    
    fourbitadd add1(.A(A), .B(B), .Cin(Cin), .C(C), .S(S)); 
    
    integer i; 
    
    initial
    begin 
        Cin = 0; 
        for(i = 0; i < 256; i = i + 1) 
            begin 
                {B,A} = i;
                #10;
            end
            Cin = 1; 
            for (i = 0; i < 256; i = i + 1)
            begin 
                {B,A} = i;
                #10;
            end 
            $stop;
   end            
    
endmodule
