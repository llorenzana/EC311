`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 03:55:46 PM
// Design Name: 
// Module Name: mooreMachine_task2
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


module mooreMachine_task2(
    output reg aout,
    input [1:0] ain,
    input clk,
    input reset
    );
    
    reg [1:0] state;
    
    always @(posedge clk, posedge reset)
    begin
        if (reset == 1'b1) begin
            state <= 1'b00;
        end else begin
            case(state)
                2'b00: begin 
                    if (ain == 2'b00) begin
                        state <= 2'b00;
                        aout <= aout;
                    end else if (ain == 2'b01) begin
                        state <= 2'b01;
                        aout <= 1'b0;
                    end else if (ain == 2'b10) begin
                        state <= 2'b10;
                        aout <= ~aout;
                    end else if (ain == 2'b11) begin
                        state <= 2'b11;
                        aout <= 1'b1;
                    end
                end
                2'b01: begin
                    if (ain == 2'b00) begin
                        state <= 2'b00;
                        aout <= aout;
                    end else if (ain == 2'b01) begin
                        state <= 2'b01;
                        aout <= 1'b0;
                    end else if (ain == 2'b10) begin
                        state <= 2'b10;
                        aout <= ~aout;
                    end else if (ain == 2'b11) begin
                        state <= 2'b11;
                        aout <= 1'b1;
                    end
                end
                2'b10: begin
                    if (ain == 2'b00) begin
                        state <= 2'b00;
                        aout <= aout;
                    end else if (ain == 2'b01) begin
                        state <= 2'b01;
                        aout <= 1'b0;
                    end else if (ain == 2'b10) begin
                        state <= 2'b10;
                        aout <= ~aout;
                    end else if (ain == 2'b11) begin
                        state <= 2'b11;
                        aout <= 1'b1;
                    end
                end
                2'b11: begin
                    if (ain == 2'b00) begin
                        state <= 2'b00;
                        aout <= aout;
                    end else if (ain == 2'b01) begin
                        state <= 2'b01;
                        aout <= 1'b0;
                    end else if (ain == 2'b10) begin
                        state <= 2'b10;
                        aout <= ~aout;
                    end else if (ain == 2'b11) begin
                        state <= 2'b11;
                        aout <= 1'b1;
                    end
                end
                default: state <= 2'b00;  
            endcase
        end
    end
    
endmodule
