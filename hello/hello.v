module hello(A, B);
    input A;
    output B;
    assign #2 B = A;

endmodule