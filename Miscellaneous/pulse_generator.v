module pulse_generator;
    reg clk;
    integer count = 0;

    initial begin : forever_block
      clk = 0;
      forever begin
        #5 clk = ~clk;
        count = count + 1;
        if(count == 1)
          disable forever_block;
      end
    end
    initial begin
      $display("clk = %b", clk); #5;
      $display("clk = %b", clk); #5;
      $display("clk = %b", clk); #5;
      $display("clk = %b", clk); #5;
      $display("clk = %b", clk); #5;
      $display("clk = %b", clk); #5;
    end
endmodule;