`timescale 1ns/1ns
`include "mux_4_to_1.v"
`define size 10

module testbench;
    reg [`size-1:0] a, b, c, d;
    reg [1:0] sel;
    reg sel1, sel2;
    wire[`size-1:0] y;

    // mux_4_to_1_1 uut (a, b, c, d, sel1, sel2, y);

    // initial begin
    //     $monitor("a = %0d, b = %0d, c = %0d, d = %0d, sel1 = %b, sel2 = %b, y = %0d", a, b, c, d, sel1, sel2, y);
    //     a = 0; b = 1; c = 2; d = 3; sel1 = 0; sel2 = 0; #10;
    //     a = 0; b = 1; c = 2; d = 3; sel1 = 0; sel2 = 1; #10;
    //     a = 0; b = 1; c = 2; d = 3; sel1 = 1; sel2 = 0; #10;
    //     a = 0; b = 1; c = 2; d = 3; sel1 = 1; sel2 = 1; #10;
    //     $finish;
    // end

    mux_4_to_1_2 #(.size(`size)) uut (a, b, c, d, sel, y);

    initial begin
        $monitor("a = %0d, b = %0d, c = %0d, d = %0d, sel = %b, y = %0d", a, b, c, d, sel, y);
        a = 100; b = 200; c = 300; d = 400; sel = 0; #10;
        a = 100; b = 200; c = 300; d = 400; sel = 1; #10;
        a = 100; b = 200; c = 300; d = 400; sel = 2; #10;
        a = 100; b = 200; c = 300; d = 400; sel = 3; #10;
        $finish;
    end

endmodule