`timescale 1ns/1ns
`include "D_flip_flop_with_reset.v"

module testbench;
    reg D, clk, reset;
    wire Q;

    initial clk = 0;
    initial reset = 0;
    always #5 clk = ~clk;

    d_flip_flop_with_reset uut (.D(D), .clk(clk), .reset(reset), .Q(Q));

    initial begin
        $monitor("D = %b, clk = %b, reset = %b, Q = %b", D, clk, reset, Q);
        D = 1; reset = 0; #10;
        D = 1; reset = 1; #10;
        D = 0; reset = 0; #10;
        $finish;
    end
endmodule