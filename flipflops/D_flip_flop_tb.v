`timescale 1ns/1ns
`include "D_flip_flop.v"

module testbench;
    reg D, clk;
    wire Q;

    initial clk = 0;
    always #5 clk = ~clk;

    d_flip_flop uut (.D(D), .clk(clk), .Q(Q));
    initial begin
        $monitor("D = %b, clk = %b, Q = %b", D, clk, Q);
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;
        #5; $finish;
    end
endmodule