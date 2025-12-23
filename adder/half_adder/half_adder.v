module half_adder_1(input A, B, output Sum, Carry); //Dataflow modelling
    xor I1 (Sum, A, B);
    and I2 (Carry, A, B);
endmodule

module half_adder_2(input A, B, output Sum, Carry); //Dataflow modelling
    assign Sum = A ^ B;
    assign Carry = A & B;
endmodule

module half_adder_3(input A, B, output Sum, Carry); //Behaviour modelling
    assign Sum = A ^ B;
    assign Carry = A & B;
endmodule