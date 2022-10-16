`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 04:00:49 PM
// Design Name: 
// Module Name: fibonacciCounter
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


module fibonacciCounter(
output reg [5:0] aout,
    input ain,
    input clk,
    input reset
    );
    
    reg [3:0] state;
    
    always @(posedge clk, posedge reset)
    begin
        if (reset == 1'b1) begin
            state <= 4'b0000;
         end else begin
            case(state)
                4'b0000: state <= (ain == 1'b1) ? 4'b0001 : 4'b0000;
                4'b0001: state <= (ain == 1'b1) ? 4'b0010 : 4'b0001;
                4'b0010: state <= (ain == 1'b1) ? 4'b0011 : 4'b0010;
                4'b0011: state <= (ain == 1'b1) ? 4'b0100 : 4'b0011;
                4'b0100: state <= (ain == 1'b1) ? 4'b0101 : 4'b0100;
                4'b0101: state <= (ain == 1'b1) ? 4'b0110 : 4'b0101;
                4'b0110: state <= (ain == 1'b1) ? 4'b0111 : 4'b0110;
                4'b0111: state <= (ain == 1'b1) ? 4'b1000 : 4'b0111;
                4'b1000: state <= (ain == 1'b1) ? 4'b1001 : 4'b1000;
                4'b1001: state <= (ain == 1'b1) ? 4'b0000 : 4'b1001;
                default: state <= 4'b0000;
            endcase
         end
        case(state)
                4'b0000: aout <= 6'b000000;
                4'b0001: aout <= 6'b000001;
                4'b0010: aout <= 6'b000001;
                4'b0011: aout <= 6'b000010;
                4'b0100: aout <= 6'b000011;
                4'b0101: aout <= 6'b000101;
                4'b0110: aout <= 6'b001000;
                4'b0111: aout <= 6'b001101;
                4'b1000: aout <= 6'b010101;
                4'b1001: aout <= 6'b100010;
                default: aout <= 6'b000000;
        endcase
    end
    
endmodule

