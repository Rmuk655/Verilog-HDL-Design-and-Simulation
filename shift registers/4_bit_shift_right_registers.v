module right_shift_4_bit(input clk, reset, serial_in, output reg [3:0] Q);
    always @(posedge clk or posedge reset) begin
        if(reset)
            Q <= 0;
        else
            Q <= {serial_in, Q[3:1]};
    end
endmodule