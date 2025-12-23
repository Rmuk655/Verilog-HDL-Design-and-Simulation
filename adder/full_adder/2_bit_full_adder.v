`include "../half_adder/half_adder.v"
module adder_2_bit_1(input a, input b, input cin, output sum, output cout); //Structural Modelling using half adder, case 1
    wire s1, c1, c2;
    half_adder_1 ins1 (.A(a), .B(b), .Sum(s1), .Carry(c1));
    half_adder_1 ins2 (.A(s1), .B(cin), .Sum(sum), .Carry(c2));
    or(cout, c1, c2);
endmodule

module adder_2_bit_2(input a, input b, input cin, output sum, output cout); //Structural Modelling using half adder, case 2
    wire s1, c1, c2;
    half_adder_1 ins1 (.A(a), .B(b), .Sum(s1), .Carry(c1));
    half_adder_1 ins2 (.A(s1), .B(cin), .Sum(sum), .Carry(c2));
    cout = c1 | c2;
endmodule

module adder_2_bit_3(input a, input b, input cin, output sum, output cout); //Structural modelling
    wire c1, c2, c3;
    and(c1, a, b);
    and(c2, a, cin);
    and(c3, b, cin);
    xor I1 (sum, a, b, cin);
    or I2 (cout, c1, c2, c3);
endmodule

module adder_2_bit_4(input a, input b, input cin, output sum, output cout); //Dataflow modelling
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule