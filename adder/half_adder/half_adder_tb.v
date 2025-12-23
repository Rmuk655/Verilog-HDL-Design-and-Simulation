`timescale 1ns/1ns
`include "half_adder.v"

module testbench;
    reg A, B;
    wire Sum, Carry;

    half_adder_1 uut (.A(A), .B(B), .Sum(Sum), .Carry(Carry));

    initial begin
        $monitor("A = %b, B = %b, Sum = %b, Carry = %b", A, B, Sum, Carry);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $finish;
    end
endmodule