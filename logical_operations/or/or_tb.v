`timescale 1ns/1ns
`include "or.v"

module testbench;
    reg A, B;
    wire Y;

    OR_gate uut(.a(A), .b(B), .y(Y));

    initial begin
        $monitor("A = %b, B = %b, Y = %b", A, B, Y);

        A = 0; B = 0; #20;
        A = 0; B = 1; #20;
        A = 1; B = 0; #20;
        A = 1; B = 1; #20;

        $finish;
    end
endmodule