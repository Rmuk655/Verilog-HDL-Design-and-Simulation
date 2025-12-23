`timescale 1ns/1ns
`include "ripple_carry_adder.v"

module testbench;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] sum;
    wire cout;

    ripple_carry_adder_1 uut (.A(A), .B(B), .Cin(Cin), .sum(sum), .cout(cout));

    initial begin
        $monitor("A = %d, B = %d, Cin = %d, sum = %d, carry = %d", A, B, Cin, sum, cout);
        A = 10; B = 5; Cin = 0; #10;
        A = 15; B = 7; Cin = 1; #10;
        A = 13; B = 11; Cin = 0; #10;
        A = 12; B = 14; Cin = 1; #10;
        A = 4; B = 7; Cin = 0; #10;
        $finish;
    end
endmodule