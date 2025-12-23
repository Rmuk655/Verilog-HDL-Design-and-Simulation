`timescale 1ns/1ns
`include "8_bit_cou.v"

module testbench;
    reg clk, reset, enable;
    wire [7:0] counter;

    initial begin
        clk = 0;
        reset = 0;
    end

    always #5 clk = ~clk;

    counter_8_bit uut (.clk(clk), .reset(reset), .enable(enable), .counter(counter));

    initial begin
        $monitor("clk = %b, reset = %b, enable = %b, counter = %0d", clk, reset, enable, counter);
        reset = 1; enable = 1; #10;
        reset = 0; enable = 1; #10;
        reset = 0; enable = 1; #10;
        reset = 0; enable = 0; #10;
        reset = 1; enable = 1; #10;
        $finish;
    end
endmodule