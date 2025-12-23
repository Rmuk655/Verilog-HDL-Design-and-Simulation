`timescale 1ns/1ns
`include "nor.v"

module testbench;
    reg a, b;
    wire y;

    NOR_gate uut (.a(a), .b(b), .y(y));

    initial begin
        $monitor("a = %b, b = %b, y = %b", a, b, y);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule