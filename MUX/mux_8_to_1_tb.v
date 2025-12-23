`timescale 1ns/1ns
`include "mux_8_to_1.v"

module testbench;
    reg [7:0] a;
    reg [2:0] sel;
    wire y;

    mux_8_to_1 uut (.a(a), .sel(sel), .y(y));

    initial begin
        $monitor("a = %b, sel = %b, y = %b", a, sel, y);
        a = 70; sel = 0; #10;
        a = 70; sel = 2; #10;
        a = 70; sel = 4; #10;
        a = 70; sel = 6; #10;
        $finish;
    end
endmodule