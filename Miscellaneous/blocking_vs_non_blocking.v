module block_vs_non_block(input B, D, clk, output reg A, C);
    always @(posedge clk) begin
        A = B; // Blocking assignment
        C <= D; // Non-blocking assignment
        $display("Inside always: A=%b, C=%b", A, C);
    end
endmodule