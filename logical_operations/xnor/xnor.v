module XNOR_gate_1 (input a, b, output y); //Dataflow modeling
    assign y = ~(a ^ b);
endmodule

module XNOR_gate_2 (input a, b, output reg y); //Behavioural modeling
    always @(*) begin
        y = ~(a ^ b);
    end
endmodule