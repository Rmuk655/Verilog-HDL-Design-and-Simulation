`timescale 1ns/1ns
`include "n_bit_up_down_cou.v"
`define size 4

module testbench;
    reg clk, reset, mode;
    wire [`size-1:0] count;

    initial clk = 0;
    initial reset = 0;

    always #5 clk = ~clk;
    up_down_counter #(.size(`size)) uut(.clk(clk), .reset(reset), .mode(mode), .count(count));

    initial begin
        $monitor("clk = %b, reset = %b, mode = %b, count = %0d", clk, reset, mode, count);
        reset = 1; mode = 1; #5;
        reset = 0; mode = 1; #5;
        reset = 0; mode = 1; #5;
        reset = 0; mode = 1; #5;
        reset = 0; mode = 0; #5;
        reset = 0; mode = 0; #5;
        $finish;
    end
endmodule