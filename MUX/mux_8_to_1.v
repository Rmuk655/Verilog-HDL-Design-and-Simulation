`include "mux_4_to_1.v"
module mux_8_to_1 (input [7:0] a, input [2:0] sel, output y);
    wire y1, y2;
    mux_4_to_1_1 m1(a[0], a[1], a[2], a[3], sel[1], sel[0], y1);
    mux_4_to_1_1 m2(a[4], a[5], a[6], a[7], sel[1], sel[0], y2);
    assign y = sel[2] ? y2 : y1;
endmodule