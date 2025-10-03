module top(
    input [7:0] sw,
    output [5:0] led
);

light stair(
    .upstairs(sw[0]),
    .downstairs(sw[1]),
    .stair_light(led[0])
);

adder add(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .carry(led[2])
);

full_adder fad_1(
    .A(sw[4]),
    .B(sw[6]),
    .Cin(),
    .Y(led[3]),
    .Cout()
);

full_adder fad_2(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(fad_1.Cout),
    .Y(led[4]),
    .Cout(led[5])
);

endmodule