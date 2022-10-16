`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 01:15:47 PM
// Design Name: 
// Module Name: bin_to_ssd
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


module bin_to_ssd(
    input [5:0] binary,
    input clk,
    output reg [6:0] seg,
    output reg [7:0] an
    );
    
    wire [3:0] bcd1, bcd0;
    wire [6:0] seg1, seg0;
    wire newclk;
    
    ssd_clk_div cdiv(.clk_in(clk), .divided_clk(newclk));
    sixbit_BCD myBCD(.binary(binary), .Tens(bcd1), .Ones(bcd0));
    segment7 tens(.bcd(bcd1), .seg(seg1));
    segment7 ones(.bcd(bcd0), .seg(seg0));
    
    //assign newclk = clk;
    
    always @(newclk) begin
        if(newclk) begin
            an <= 8'b11111110;
            seg <= seg0;
        end else begin
            an <= 8'b11111101;
            seg <= seg1;
        end
     end
     
endmodule
