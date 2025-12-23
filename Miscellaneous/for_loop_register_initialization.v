module register_array;
    reg[7:0] registers [0:15]; // 16 registers of 8-bit width
    integer i;
    initial begin
      for(i = 0; i < 16; i = i + 1)
        registers[i] = 8'hFF;
    end
endmodule