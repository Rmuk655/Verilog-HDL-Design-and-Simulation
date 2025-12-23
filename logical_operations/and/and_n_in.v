module AND_gate_n_in #(parameter size = 3) (input [size-1:0] a, output reg y);
    integer i;
    always @(*) begin
        y = 1;
        for (i = 0; i < size; i = i + 1) begin
            y = y & a[i];
        end
    end
endmodule