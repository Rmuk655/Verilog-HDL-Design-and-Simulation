`timescale 1ns/1ns
`include "blocking_vs_non_blocking.v"

module testbench;
    reg B, D, clk;
    wire A, C;

    initial clk = 0;
    always #5 clk = ~clk;

    block_vs_non_block uut (.clk(clk), .A(A), .B(B), .C(C), .D(D));

    initial begin
        $monitor("clk = %b, B = %b, A = %b, D = %b, C = %b", clk, B, A, D, C);
        B = 0; D = 0; #10;
        B = 0; D = 1; #10;
        B = 1; D = 0; #10;
        B = 1; D = 1; #10;
        $finish;
    end
endmodule