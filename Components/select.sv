`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2023 03:02:23 PM
// Design Name: 
// Module Name: select
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


module select(
    
    input a , b, sel,
    output y    
    
);

    logic temp;
       
    always@(*)
    begin
        if (sel == 1'b0)
        temp = a;
        else
        temp = b;
    end

    assign y = temp;

endmodule
