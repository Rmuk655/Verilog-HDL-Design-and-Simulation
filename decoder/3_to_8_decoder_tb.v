`timescale 1ns/1ns
`include "3_to_8_decoder.v"

module testbench;
    reg [2:0] a;
    wire [7:0] y;

    decoder_3_to_8 uut (.a(a), .y(y));
    initial begin
        $monitor("a = %b, y = %b", a, y);
        a = 0; #10;
        a = 1; #10;
        a = 9; #10;
        a = 3; #10;
        a = 4; #10;
        a = 5; #10;
        a = 6; #10;
        a = 7; #10;
        $finish;
    end
endmodule