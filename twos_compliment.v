module twos_compliment(
    input [7:0] A,
    output [7:0] Y
);

wire carry1;
wire carry2;
wire carry3;
wire carry4;
wire carry5;
wire carry6;
wire carry7;

full_adder lsb(
    .A(~A[0]),
    .B(1'b1),
    .Y(Y[0]),
    .Cout(carry1)
);
full_adder second_bit(
    .A(~A[1]),
    .B(1'b0),
    .Y(Y[1]),
    .Cin(carry1),
    .Cout(carry2)
);
full_adder third_bit(
    .A(~A[2]),
    .B(1'b0),
    .Y(Y[2]),
    .Cin(carry2),
    .Cout(carry3)
);
full_adder fourth_bit(
    .A(~A[3]),
    .B(1'b0),
    .Y(Y[3]),
    .Cin(carry3),
    .Cout(carry4)
);
full_adder fifth_bit(
    .A(~A[4]),
    .B(1'b0),
    .Y(Y[4]),
    .Cin(carry4),
    .Cout(carry5)
);
full_adder sixth_bit(
    .A(~A[5]),
    .B(1'b0),
    .Y(Y[5]),
    .Cin(carry5),
    .Cout(carry6)
);
full_adder seventh_bit(
    .A(~A[6]),
    .B(1'b0),
    .Y(Y[6]),
    .Cin(carry6),
    .Cout(carry7)
);
full_adder msb(
    .A(~A[7]),
    .B(1'b0),
    .Y(Y[7]),
    .Cin(carry7)
);

endmodule