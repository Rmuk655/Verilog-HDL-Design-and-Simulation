module while_loop;
    integer count = 0;
    initial begin
        while(count < 5) begin
            $display("count = %0d", count);
            count = count + 1;
        end
    end
endmodule