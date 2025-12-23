`timescale 1ns/1ns
`include "4_bit_shift_right_registers.v"

module testbench;
    reg clk, reset, serial_in;
    wire [3:0] Q;

    initial begin
        clk = 0;
        reset = 0;
    end

    always #5 clk = ~clk;

    right_shift_4_bit uut(.clk(clk), .reset(reset), .serial_in(serial_in), .Q(Q));

    initial begin
        $monitor("clk = %b, reset = %b, serial_in = %b, Q = %b", clk, reset, serial_in, Q);
        reset = 1; serial_in = 0; #10;
        reset = 0; serial_in = 1; #10;
        reset = 0; serial_in = 1; #10;
        reset = 0; serial_in = 1; #10;
        reset = 0; serial_in = 0; #10;
        reset = 0; serial_in = 0; #10;
        $finish;
    end
endmodule