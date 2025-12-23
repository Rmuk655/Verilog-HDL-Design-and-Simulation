module mux_2_to_1_1 #(parameter width = 8) (input [width-1:0] a, input [width-1:0] b, input sel, output [width-1:0] y); // dataflow modelling
    assign y = (sel) ? b : a;
endmodule

module mux_2_to_1_2(input a, input b, input sel, output reg y); //behavioural modelling
    always @(*) begin
        if(sel == 0) y = a;
        else y = b;
    end
endmodule