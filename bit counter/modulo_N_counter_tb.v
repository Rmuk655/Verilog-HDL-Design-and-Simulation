`timescale 1ns/1ns
`include "modulo_n_counter.v"

module testbench;
    reg clk, reset;
    wire [7:0] counter;

    initial begin
        clk = 0;
        reset = 0;
    end

    always #5 clk = ~clk;

    modulo_n_counter uut (.clk(clk), .reset(reset), .counter(counter));

    initial begin
        $monitor("clk = %b, reset = %b, counter = %b", clk, reset, counter);
        reset = 1; #10;
        reset = 0; #10;
        reset = 0; #10;
        reset = 0; #10;
        reset = 0; #10;
        reset = 0; #10;
        reset = 0; #10;
        reset = 1; #10;
        reset = 0; #10;
        $finish;
    end
endmodule