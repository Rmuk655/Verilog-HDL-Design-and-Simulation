`timescale 1ns/1ns
`include "priority_encoder.v"

module testbench;
    reg [3:0] in;
    wire [1:0] out;
    
    priority_encoder uut(.in(in), .out(out));

    initial begin
        $monitor("in = %b, out = %b", in, out);
        in = 0; #10;
        in = 1; #10;
        in = 2; #10;
        in = 3; #10;
        in = 4; #10;
        in = 5; #10;
        in = 6; #10;
        in = 7; #10;
        in = 8; #10;
        $finish;
    end
endmodule