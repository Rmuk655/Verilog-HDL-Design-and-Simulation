module t_flip_flop(input clk, reset, T, output reg Q);
    always @(posedge clk or posedge reset) begin
        if(reset)
            Q <= 0;
        else if(T)
            Q <= ~Q;
    end
endmodule