module twotofourdecoder(
    input wire A,
    input wire B,
    output wire [3:0] i
);

    // Output assignments
    assign i[0] = ~(A) & ~(B);
    assign i[1] = ~(A) & B;
    assign i[2] = A & ~(B);
    assign i[3] = A & B;

endmodule