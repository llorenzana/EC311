`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2022 03:53:06 PM
// Design Name: 
// Module Name: mealyMachine_task1
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


module mealyMachine_task1(
    input ain,
    input clock,
    input reset,
    output aout
    );

    reg [1:0] state;    
    
        always @(posedge clock or posedge reset)
            begin
                if (reset == 1'b1)
                    state <= 2'b00; //initial state
            else
                case (state)
                    2'b00: state <= (ain==1'b1) ? 2'b00 : 2'b01;
                    2'b01: state <= (ain==1'b1) ? 2'b10 : 2'b01;
                    2'b10: state <= (ain==1'b1) ? 2'b00 : 2'b01;
                    default: state <= 2'b00;
                endcase
            end
    assign aout = (ain && (state == 2'b10)) ? 1'b1 : 1'b0;
endmodule
