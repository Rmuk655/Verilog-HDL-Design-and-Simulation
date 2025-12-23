`timescale 1ns/1ns
`include "3_bit_bin_cou.v"

module testbench;
    reg clk, reset, enable;
    wire [2:0] Q;

    always #5 clk = ~clk;

    bin_cou_n_bit uut (.clk(clk), .reset(reset), .enable(enable), .Q(Q));

    initial begin
        $monitor("clk = %b, reset = %b, enable = %b, Q = %b", clk, reset, enable, Q);
        clk = 0;
        reset = 1; enable = 1; #10;
        reset = 0; enable = 1; #10;
        reset = 0; enable = 0; #10;
        reset = 0; enable = 1; #10;
        reset = 0; enable = 0; #10;
        $finish;
    end
endmodule