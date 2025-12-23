`timescale 1ns/1ns
`include "and_n_in.v"
`define size 3

module testbench;
    reg [`size-1:0] A;
    wire Y;

    AND_gate_n_in #(.size(`size)) uut(.a(A), .y(Y));

    initial begin
        $monitor("A = %b, Y = %b", A, Y);
        A = 0; #10;
        A = 4; #10;
        A = 7; #10;
        A = 3; #10;
        $finish;
    end
endmodule