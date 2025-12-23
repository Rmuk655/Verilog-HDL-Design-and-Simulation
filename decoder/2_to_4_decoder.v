module decoder_2_to_4_1 (input [1:0] A, output [3:0] Y); //Dataflow model
    assign Y[0] = (~A[0])&(~A[1]);
    assign Y[1] = (A[0])&(~A[1]);
    assign Y[2] = (~A[0])&(A[1]);
    assign Y[3] = (A[0])&(A[1]);
endmodule

module decoder_2_to_4_2 (input [1:0] A, output reg [3:0] Y); //Behavioural model
    always @(*) begin
        case(A)
            2'b00: Y = 4'b0001;
            2'b01: Y = 4'b0010;
            2'b10: Y = 4'b0100;
            2'b11: Y = 4'b1000;
            default: Y = 4'b0000;
        endcase
    end
endmodule