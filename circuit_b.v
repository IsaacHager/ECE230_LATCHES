module circuit_b(
    input A, B, C, D,// Declare inputs
    output Y// Declare Y output
);

    assign Y = (B & ~D) | (~C & ~D) | (A & B);// Enter logic equation here

endmodule
