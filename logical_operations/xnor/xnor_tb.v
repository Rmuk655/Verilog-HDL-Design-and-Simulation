`timescale 1ns/1ns
`include "xnor.v"

module testbench;
    reg a, b;
    wire y;

    XNOR_gate_2 uut (.a(a), .b(b), .y(y));

    initial begin
        $monitor("a = %b, b = %b, y = %b", a, b, y);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule