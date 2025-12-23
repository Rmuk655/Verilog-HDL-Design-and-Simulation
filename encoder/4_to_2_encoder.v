module encoder_4_to_2 (input [3:0] Y, output reg [1:0] sel); //Behavioural modelling
    always @(*) begin
        case(Y)
            4'b0001: sel = 2'b00;
            4'b0010: sel = 2'b01;
            4'b0100: sel = 2'b10;
            4'b1000: sel = 2'b11;
            default: sel = 2'bxx;
        endcase
    end
endmodule