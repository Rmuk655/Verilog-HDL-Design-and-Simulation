module d_flip_flop_with_reset(input D, input clk, input reset, output reg Q); //Behavioural modelling
    always @(posedge clk or posedge reset) begin
        if(reset)
            Q <= 0;
        else
            Q <= D;
    end
endmodule