module for_loop;
    integer i;
    initial begin
        for(i = 0; i < 10; i = i + 1)
            $display ("i = %0d", i);
    end
endmodule
