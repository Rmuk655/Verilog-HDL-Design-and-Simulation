`timescale 1ns/1ns
`include "2_to_4_decoder.v"

module testbench;
    reg [1:0] A;
    wire [3:0] Y;

    decoder_2_to_4_2 uut (.A(A), .Y(Y));

    initial begin
        $monitor("A = %b, Y = %b", A, Y);
        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;
        $finish;
    end
endmodule