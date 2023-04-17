`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2023 03:37:41 PM
// Design Name: 
// Module Name: Assignment_05
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


module Assignment_05();
    
    initial begin
     reg [7:0] a = 8'd12;
     reg [7:0] b = 8'd34;
     integer c = 67;
     integer d = 255;
     
     #12
     
     $display("a = %d, b  = %d, c = %d, d = %d", a, b, c, d);
     
     end
endmodule
