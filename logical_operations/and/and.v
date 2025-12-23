module AND_gate_1(input a, input b, output y);
    assign y = a & b;
endmodule

module AND_gate_2(input a, input b, output y);
    and u1 (y, a, b);
endmodule

module AND_gate_3(input a, input b, output reg y);
    always @(*) begin
        if (a & b)
            y = 1;
        else
            y = 0;
    end
endmodule

module AND_gate_4(input a, input b, output reg y);
    always @(*) begin
        y = a & b;
    end
endmodule