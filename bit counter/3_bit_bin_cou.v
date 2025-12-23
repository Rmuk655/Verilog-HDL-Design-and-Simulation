module bin_cou_n_bit #(parameter n = 3) (input clk, reset, enable, output reg [n-1:0] Q);
    always @(posedge clk or posedge reset) begin
        if(reset)
            Q <= 0;
        else if (enable)
            Q <= Q + 1;
    end
endmodule