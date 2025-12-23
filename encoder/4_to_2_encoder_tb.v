`timescale 1ns/1ns
`include "4_to_2_encoder.v"

module testbench;
    reg [3:0] Y;
    wire [1:0] sel;

    encoder_4_to_2 uut (.Y(Y), .sel(sel));

    initial begin
        $monitor("Y = %b, sel = %b", Y, sel);
        Y = 4'b0001; #10;
        Y = 4'b0010; #10;
        Y = 4'b0100; #10;
        Y = 4'b1000; #10;
        $finish;
    end
endmodule