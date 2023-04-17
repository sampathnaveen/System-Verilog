`timescale 1ns / 1ps
module half_adder_tb();
    
    reg ta, tb;
    wire SUM, CARRY;
    

half_adder dut (.a(ta), .b(tb), .sum(SUM), .carry(CARRY) );

initial begin

    ta = 0; tb = 0;
    #10
    ta = 0; tb = 1;
    #10
    ta = 1; tb = 0;
    #10
    ta = 1; tb = 1;
    
    $stop;
    
end;
endmodule
