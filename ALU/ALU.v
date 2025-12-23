module arithmetic_unit(input [3:0] A, B, input mode, output [3:0] result);
    assign result = mode ? A - B : A + B;
endmodule

module logic_unit(input [3:0] A, B, input [1:0] sel, output reg [3:0] result);
    always @(*) begin
        case(sel)
            2'b00: result = A ^ B;
            2'b01: result = ~A;
            2'b10: result = A & B;
            2'b11: result = A | B;
            default: result = 4'b0000;
        endcase
    end
endmodule

module ALU_1 (input [3:0] A, B, input [2:0] op, output reg [3:0] result);
    wire [3:0] arith_result, logic_result;
    arithmetic_unit ins1 (.A(A), .B(B), .mode(op[0]), .result(arith_result));
    logic_unit ins2 (.A(A), .B(B), .sel(op[1:0]), .result(logic_result));
    always @(*) begin
        case(op)
            3'b000, 3'b001: result = arith_result;
            3'b010, 3'b011, 3'b100, 3'b101: result = logic_result;
            default: result = 4'b0000;
        endcase
    end
endmodule

module ALU_2 (input [3:0] A, B, input [2:0] op, output reg [3:0] result);
    always @(*) begin
        case(op)
            3'b000: result = A + B;
            3'b001: result = A - B;
            3'b010: result = A & B;
            3'b011: result = A | B;
            3'b100: result = A ^ B;
            3'b101: result = ~A;
            default: result = 4'b0000;
        endcase
    end
endmodule