module shift_registers_4_bit(input clk, reset, serial_in, output reg [3:0] Q);
    always @(posedge clk or posedge reset) begin
        if(reset)
            Q <= 0;
        else
            Q <= {Q[2:0], serial_in};
    end
endmodule