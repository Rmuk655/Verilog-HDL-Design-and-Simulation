module up_down_counter #(parameter size = 10) (input clk, reset, mode, output reg[size-1:0] count); //Behavioural modelling
    always @(posedge clk or posedge reset) begin
      if(reset)
        count = 0;
      else if(mode)
        count = count + 1;
      else
        count = count - 1;
    end
endmodule