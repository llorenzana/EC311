`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Leanorine Lorenzana-Garcia & Zachary Tan
// 
// Create Date: 04/25/2022 01:11:56 PM
// Design Name: 
// Module Name: countdownTimer
// Project Name: EC311 Final Project - Countdown Timer
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


module countdownTimer(
    input [5:0]in,
    input clk, 
    input reset, 
    input start_con,
    input pause,
    input restart, 
    output reg LED, 
    output [6:0] seg, 
    output [7:0] an
    //output myclk
    );
    
    wire newclk, my_reset, my_start_con, my_pause, my_restart;
    reg [5:0] myValReg, first;
    reg [2:0] cur_state, next_state, state, prev_state;
    /* State Values:
        000 - idle
        001 - set
        010 - run
        011 - pause
        100 - restart
    */
    
    clk_divider cdiv(.clk_in(clk), .divided_clk(newclk));
    bin_to_ssd mySSD(.binary(myValReg), .clk(clk), .seg(seg), .an(an));
    debouncer debReset(.clean(my_reset), .button(reset), .clk(clk));
    debouncer debStart_con(.clean(my_start_con), .button(start_con), .clk(clk));
    debouncer debPause(.clean(my_pause), .button(pause), .clk(clk));
    debouncer debRestart(.clean(my_restart), .button(restart), .clk(clk));
    
    //used to show seconds
    //assign myclk = newclk;
    
    //Moore Machine
    always @(posedge newclk) begin 
    
        //check if new state has been inputed
        if(state != next_state) begin
            prev_state <= cur_state;
            cur_state <= next_state;
            state <= next_state;
        end
        
        case(cur_state) //determine output based on state
            3'b000: begin //idle
                myValReg <= in;
                first <= in;
                LED <= 1'b0;
            end
            3'b001: begin //set
                if(first != in && prev_state != 3'b011) begin
                    myValReg <= in;
                    first <= in;
                    LED <= 1'b0;
                end
                cur_state <= 3'b010;
            end
            3'b010: begin //run
                if(myValReg != 6'b000000) begin
                    myValReg[5:0] = myValReg[5:0] - 1'b1;
                end else begin
                    cur_state <= 3'b011;
                end
            end
            3'b011: begin //pause
                if(myValReg == 6'b000000) begin
                    LED = ~LED;
                end
            end
            3'b100: begin //restart
                myValReg <= first;
                LED <= 1'b0;
                cur_state <= 3'b010;
            end
            default: myValReg <= myValReg;
        endcase
    end
    
    //Change state based on button input        
    always @(posedge my_reset, posedge my_start_con, posedge my_pause, posedge my_restart) begin
        if(my_reset) begin
            next_state <= 3'b000;
        end else if(my_start_con) begin
            next_state <= 3'b001;
        end else if(my_pause) begin
            next_state <= 3'b011;
        end else if(my_restart) begin
            next_state <= 3'b100;
        end 
    end
endmodule
