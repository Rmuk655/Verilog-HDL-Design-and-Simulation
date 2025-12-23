`timescale 1ns/1ns
`include "2_bit_bin_cou.v"

module testbench;
    reg clk, reset;
    wire [1:0] q;

    counter_2_bit uut(.clk(clk), .reset(reset), .q(q));
    initial begin
        $monitor("clk = %b, reset = %b, q = %d", clk, reset, q);
        clk = 0; reset = 1; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        $finish;
    end
endmodule