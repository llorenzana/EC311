`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 04:02:56 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer(
output reg clean,
    input button,
    input clk
    );
    
    reg [2:0] deb_count;
    reg out_exist;
    
    always @(posedge clk) begin
        if(button == 1'b0) begin
            clean <= 1'b0;
            deb_count <= 3'b000;
            out_exist <= 1'b0;
        end else begin
            if(out_exist == 1'b1) begin
                clean <= 1'b0;
            end else begin
                if(deb_count == 3'b001) begin
                    clean <= 1'b1;
                    deb_count <= 3'b000;
                    out_exist <= 1'b1;
                end else begin
                    deb_count <= deb_count + 1'b1;
                end
            end
        end   
    end
    
    
endmodule

