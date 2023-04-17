/* To generate multiple clocks
    In this example we will try to generate a clk signal based on the inputs parameters such as Frequency, Period and Duty cycle
    The above mentioned 3 are generally used as an input to generate the clock in any simulation
*/
`timescale 1ns / 1ps

module clkgen();
  reg clk = 0;  ///initialize variable
  reg clk50 = 0;  ///initialize variable

  always #5 clk = ~clk;  // Generating the first clock, independent of the phased signal - this is also known as the reference signal - 100MHz
  /*
  real phase = 10;
  real ton = 5;
  real toff = 5;
  */

/*
task clkgen(input real phase, input real ton, input real toff); 
    #phase;
    while(1) begin
        clk50 = 1;
        #ton;
        clk50 = 0;
        #toff;
    end
  endtask
*/

   task clkgen(input real phase, input real ton, input real toff);
    
    
    
   endtask;


   task clkgen(input real phase, input real ton, input real toff); 
    #phase;
    while(1) begin
        clk50 = 1;
        #ton;
        clk50 = 0;
        #toff;
    end
   endtask

  
  initial begin
  clkgen(7, 5, 5);
  end
  
  initial begin
    #200;
    $finish();
  end

endmodule
