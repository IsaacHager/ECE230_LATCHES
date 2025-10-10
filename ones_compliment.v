module ones_compliment(
    input [3:0] A, B,
    output [3:0] Y
);

wire [3:0] AplusB;

wire carry1;
wire carry2;
wire carry3;

wire around;
wire final_carry1;
wire final_carry2;
wire final_carry3;

full_adder lsb_inter(
    .A(A[0]),
    .B(B[0]),
    .Y(AplusB[0]),
    .Cin(1'b0),
    .Cout(carry1)
);
full_adder second_bit_inter(
    .A(A[1]),
    .B(B[1]),
    .Y(AplusB[1]),
    .Cin(carry1),
    .Cout(carry2)
);
full_adder third_bit_inter(
    .A(A[2]),
    .B(B[2]),
    .Y(AplusB[2]),
    .Cin(carry2),
    .Cout(carry3)
);
full_adder msb_inter(
    .A(A[3]),
    .B(B[3]),
    .Y(AplusB[3]),
    .Cin(carry3),
    .Cout(around)
);

// Second set
full_adder lsb(
    .A(AplusB[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(around),
    .Cout(final_carry1)
);
full_adder second_bit(
    .A(AplusB[1]),
    .B(1'b0),
    .Y(Y[1]),
    .Cin(final_carry1),
    .Cout(final_carry2)
);
full_adder third_bit(
    .A(AplusB[2]),
    .B(1'b0),
    .Y(Y[2]),
    .Cin(final_carry2),
    .Cout(final_carry3)
);
full_adder msb(
    .A(AplusB[3]),
    .B(1'b0),
    .Y(Y[3]),
    .Cin(final_carry3)
);

endmodule