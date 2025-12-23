module mux_4_to_1_1(input a, b, c, d, input sel1, sel2, output y); //Dataflow modelling for 1 bit mux
    assign y = sel1 & sel2 ? d : sel1 ? c : sel2 ? b : a;
endmodule

module mux_4_to_1_2(input[1:0] a, b, c, d, input sel1, sel2, output[1:0] y); //Dataflow modelling for 2 bits mux
    assign y = sel1 & sel2 ? d : sel1 ? c : sel2 ? b : a;
endmodule

module mux_4_to_1_3 #(parameter size = 10) (input[size-1:0] a, b, c, d, input[1:0] sel, output reg[size-1:0] y); //Behavioural modelling
    always @(*) begin
        case(sel)
            2'b00: y = a;
            2'b01: y = b;
            2'b10: y = c;
            2'b11: y = d;
            default: y = 0;
        endcase
    end
endmodule