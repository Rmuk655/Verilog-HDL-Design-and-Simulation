module adder #(parameter WIDTH = 5) (input [WIDTH-1:0] A, input [WIDTH-1:0] B, output [WIDTH:0] C);
    assign C = A + B;
endmodule