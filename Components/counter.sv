`timescale 1ns / 1ps
module counter(clk, reset, out);

input clk, reset;
output reg [3:0] out;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        out <= 4'b0;
    end else begin
        out <= out + 1;
    end
end

endmodule