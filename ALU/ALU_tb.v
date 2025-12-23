`timescale 1ns/1ns
`include "ALU.v"

module testbench;
    reg [3:0] A, B;
    reg [2:0] op;
    wire [3:0] result;

    ALU_2 uut (.A(A), .B(B), .op(op), .result(result));

    initial begin
        $dumpfile("waveform.vcd"); // VCD (Value Change Dump) file
        $dumpvars(0, testbench); // Dumps all variables
        $monitor("A = %b, B = %b, op = %b, result = %b", A, B, op, result);
        A = 10; B = 5; op = 3'b000; #10;
        A = 10; B = 5; op = 3'b001; #10;
        A = 10; B = 5; op = 3'b010; #10;
        A = 10; B = 5; op = 3'b011; #10;
        A = 10; B = 5; op = 3'b100; #10;
        A = 10; B = 5; op = 3'b101; #10;
        $finish;
    end
endmodule