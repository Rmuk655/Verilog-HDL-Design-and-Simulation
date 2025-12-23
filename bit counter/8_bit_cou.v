module counter_8_bit(input clk, reset, enable, output reg [7:0] counter);
    always @(posedge clk or posedge reset) begin
        if(reset)
            counter <= 0;
        else if(enable)
            counter <= counter + 1;
    end
endmodule