`include "../full_adder/2_bit_full_adder.v"
module ripple_carry_adder_1 #(parameter size = 4) (input [size-1:0] A, B, input Cin, output [size-1:0] sum, output cout); // Structural Modelling
    wire C1, C2, C3;
    adder_2_bit_4 A1 (.a(A[0]), .b(B[0]), .cin(Cin), .sum(sum[0]), .cout(C1));
    adder_2_bit_4 A2 (.a(A[1]), .b(B[1]), .cin(C1), .sum(sum[1]), .cout(C2));
    adder_2_bit_4 A3 (.a(A[2]), .b(B[2]), .cin(C2), .sum(sum[2]), .cout(C3));
    adder_2_bit_4 A4 (.a(A[3]), .b(B[3]), .cin(C3), .sum(sum[3]), .cout(cout));
endmodule

module ripple_carry_adder_2 #(parameter size = 4) (input [size-1:0] A, B, input Cin, output [size-1:0] sum, output cout); // Structural Modelling
    wire C1, C2, C3;
    assign {C1, sum[0]} = A[0] + B[0] + Cin;
    assign {C2, sum[1]} = A[1] + B[1] + C1;
    assign {C3, sum[2]} = A[2] + B[2] + C2;
    assign {cout, sum[3]} = A[3] + B[3] + C3;
endmodule