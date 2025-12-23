`timescale 1ns/1ns
`include "T_flip_flop.v"

module testbench;
    reg clk, reset, T;
    wire Q;

    initial clk = 0;
    initial reset = 0;
    always #5 clk = ~clk;

    t_flip_flop uut(.clk(clk), .reset(reset), .T(T), .Q(Q));

    initial begin
        $monitor("clk = %b, reset = %b, T = %b, Q = %b", clk, reset, T, Q);
        reset = 1; T = 0; #10;
        reset = 0; T = 1; #10;
        reset = 0; T = 1; #10;
        reset = 1; T = 1; #10;
        $finish;
    end
endmodule