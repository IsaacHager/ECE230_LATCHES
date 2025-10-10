module half_sub(
    input A, B,
    output Y, borrow
);

assign Y = A ^ B;
assign borrow = B & ~A;

endmodule