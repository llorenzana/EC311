`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 01:22:22 PM
// Design Name: 
// Module Name: sixbit_BCD
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


module sixbit_BCD(
    input [5:0] binary,
    output reg [3:0]Tens,
    output reg [3:0]Ones
    );
    
    integer i; 
    
    always @(binary)
    begin 
        Tens = 4'b0000;
        Ones = 4'b0000;
        
        for (i = 5; i >= 0; i = i - 1) 
        begin 
            if (Tens[3:0] >= 5)
                Tens[3:0] = Tens[3:0] + 3;
            if (Ones[3:0] >= 5)
                Ones[3:0] = Ones[3:0] + 3; 
            
            Tens[3:0] = Tens[3:0] << 1; 
            Tens[0] = Ones[3]; 
            Ones[3:0] = Ones[3:0] << 1;
            Ones[0] = binary[i];
      end 
  end 
  
endmodule
