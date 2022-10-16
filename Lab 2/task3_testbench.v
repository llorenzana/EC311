`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 12:35:40 PM
// Design Name: 
// Module Name: task3_testbench
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


module task3_testbench(

    );
    reg X;
    reg Y;
    reg Z;
    reg reset;
    reg clk;
    reg S0;
    reg S1; 
    wire T; 
    
    task3 t3test(.X(X), .Y(Y), .Z(Z), .s_reset(reset), .clk(clk), .S0(S0), .S1(S1), .T(T)); 
     initial
        begin 
            clk = 0; 
            forever #10 clk = ~clk; 
        end 
    initial
        begin 
            reset = 1; 
            X <= 0;
            Y <= 0;
            Z <= 0; 
            S0 <= 0; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 0;            
            #100; 
           reset = 1; 
            S0 <= 1; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 0;  
            #100
            reset = 1; 
            S0 <= 0; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 1;  
            #100
            reset = 1; 
            S0 <= 1; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 1;  
            #100
            reset = 1; 
            X <= 0;
            Y <= 0;
            Z <= 1; 
            S0 <= 0; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 0;            
            #100; 
           reset = 1; 
            S0 <= 1; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 0;  
            #100
            reset = 1; 
            S0 <= 0; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 1;  
            #100
            reset = 1; 
            S0 <= 1; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 1; 
            #100
            reset = 1; 
            X <= 0;
            Y <= 1;
            Z <= 0; 
            S0 <= 0; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 0;            
            #100; 
           reset = 1; 
            S0 <= 1; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 0;  
            #100
            reset = 1; 
            S0 <= 0; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 1;  
            #100
            reset = 1; 
            S0 <= 1; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 1; 
            
            #100
            reset = 1; 
            X <= 0;
            Y <= 1;
            Z <= 1; 
            S0 <= 0; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 0;            
            #100; 
           reset = 1; 
            S0 <= 1; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 0;  
            #100
            reset = 1; 
            S0 <= 0; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 1;  
            #100
            reset = 1; 
            S0 <= 1; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 1; 
            
            #100
            reset = 1; 
            X <= 1;
            Y <= 0;
            Z <= 0; 
            S0 <= 0; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 0;            
            #100; 
           reset = 1; 
            S0 <= 1; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 0;  
            #100
            reset = 1; 
            S0 <= 0; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 1;  
            #100
            reset = 1; 
            S0 <= 1; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 1; 
            
            #100
            reset = 1; 
            X <= 1;
            Y <= 0;
            Z <= 1; 
            S0 <= 0; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 0;            
            #100; 
           reset = 1; 
            S0 <= 1; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 0;  
            #100
            reset = 1; 
            S0 <= 0; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 1;  
            #100
            reset = 1; 
            S0 <= 1; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 1; 
            
            #100
            reset = 1; 
            X <= 1;
            Y <= 1;
            Z <= 0; 
            S0 <= 0; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 0;            
            #100; 
           reset = 1; 
            S0 <= 1; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 0;  
            #100
            reset = 1; 
            S0 <= 0; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 1;  
            #100
            reset = 1; 
            S0 <= 1; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 1; 
            
            #100
            reset = 1; 
            X <= 1;
            Y <= 1;
            Z <= 1; 
            S0 <= 0; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 0;            
            #100; 
           reset = 1; 
            S0 <= 1; 
            S1 <= 0; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 0;  
            #100
            reset = 1; 
            S0 <= 0; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 0; 
            S1 <= 1;  
            #100
            reset = 1; 
            S0 <= 1; 
            S1 <= 1; 
            #100; 
            reset = 0; 
            S0 <= 1; 
            S1 <= 1; 
       end   
endmodule
