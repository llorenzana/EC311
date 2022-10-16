`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 01:24:51 PM
// Design Name: 
// Module Name: test_bcd
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


module test_bcd(

    );
        
    reg [5:0] in;
    //wire [3:0] tens;
    //wire [3:0] ones;
    wire [6:0] seg1, seg0;
    
    //sixbit_BCD test(in, tens, ones);
    bin_to_ssd test(in, seg1, seg0);
    
    initial begin
        in = 6'b100000;
    end
    
endmodule
