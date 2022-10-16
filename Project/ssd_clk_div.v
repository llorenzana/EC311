`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 01:23:21 PM
// Design Name: 
// Module Name: ssd_clk_div
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


module ssd_clk_div(
    input clk_in,
	output reg divided_clk
    );
	 
	 
//parameter toggle_value = 26'b10111110101111000010000000;
parameter toggle_value = 20'b11001011011100110101;

	 
reg[19:0] cnt;

always@(posedge clk_in)
begin


		if (cnt==toggle_value) begin
			cnt <= 0;
			divided_clk <= ~divided_clk;
		end
		else begin
			cnt <= cnt +1;
			divided_clk <= divided_clk;		
		end


end
endmodule
