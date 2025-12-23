`timescale 1ns/1ns
`include "mux_2_to_1.v"
`define width 10

module testbench;
    reg [`width-1:0] A, B;
    reg SEL;
    wire [`width-1:0] Y;

    mux_2_to_1_1 #(.width(`width)) uut (.a(A), .b(B), .sel(SEL), .y(Y));

    initial begin
        $monitor("A = %b, B = %b, SEL = %b, Y = %b", A, B, SEL, Y);
        A = 0; B = 1; SEL = 0; #10;
        A = 0; B = 1; SEL = 1; #10;
        $finish;
    end
endmodule