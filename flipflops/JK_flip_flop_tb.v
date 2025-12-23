`timescale 1ns/1ns
`include "JK_flip_flop.v"

module testbench;
    reg J, K, clk, reset;
    wire Q, Q_comp;

    initial clk = 0;
    initial reset = 0;
    always #5 clk = ~clk;

    JK_flip_flop uut(.J(J), .K(K), .clk(clk), .Q(Q), .Q_comp(Q_comp));

    initial begin
      $monitor("J = %b, K = %b, clk = %b, reset = %b, Q = %b, Q' = %b", J, K, clk, reset, Q, Q_comp);
      J = 0; K = 1; reset = 0; #10;
      J = 0; K = 0; reset = 1; #10;
      J = 1; K = 0; reset = 0; #10;
      J = 1; K = 1; reset = 0; #10;
      $finish;
    end
endmodule