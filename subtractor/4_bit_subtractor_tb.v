`timescale 1ns/1ns
`include "4_bit_subtractor.v"

module testbench;
    reg [3:0] A, B;
    wire [3:0] C;

    subtractor_4_bit uut (.A(A), .B(B), .C(C));

    initial begin
        $monitor("A = %d, B = %d, C = %d", A, B, C);
        A = 10; B = 8; #10;
        A = 14; B = 2; #10;
        A = 5; B = 4; #10;
        A = 15; B = 12; #10;
        $finish;
    end
endmodule