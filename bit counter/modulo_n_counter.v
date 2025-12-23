module modulo_n_counter #(parameter n = 16, size = 8) (input clk, reset, output reg [size-1:0] counter);
    always @(posedge clk or posedge reset) begin
        if(reset || counter == n - 1)
            counter <= 0;
        else
            counter <= counter + 1;
    end
endmodule