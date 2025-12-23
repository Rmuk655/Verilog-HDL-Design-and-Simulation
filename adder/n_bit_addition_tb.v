`timescale 1ns/1ns
`include "n_bit_addition.v"
`define WIDTH 8

module testbench;
    // parameter WIDTH = 5;
    reg [`WIDTH-1:0] A, B;
    wire [`WIDTH:0] C;

    adder #(.WIDTH(`WIDTH)) uut (.A(A), .B(B), .C(C));

    initial begin
      $monitor("A = %0d, B = %0d, C = %0d", A, B, C);
      A = 10; B = 30; #10;
      $finish;
    end
endmodule