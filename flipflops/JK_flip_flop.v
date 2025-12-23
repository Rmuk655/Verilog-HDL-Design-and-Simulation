module JK_flip_flop(input J, input K, input clk, input reset, output reg Q, output Q_comp);
    assign Q_comp = ~Q;
    always @(posedge clk or posedge reset) begin
        if (reset) Q <= 0;
        else if(J == 0 && K == 1) Q <= 0;
        else if(J == 1 && K == 0) Q <= 1;
        else if(J == 1 && K == 1) Q <= ~Q;
    end
endmodule