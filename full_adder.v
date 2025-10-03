module full_adder(
    input A, B, 
    input Cin,
    output Y,
    output Cout
);

assign Y = (A ^ B) ^ Cin;
assign Cout = (A & B) | ((A | B) & Cin);

endmodule