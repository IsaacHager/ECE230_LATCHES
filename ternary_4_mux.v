module ternary_4_mux(
    input [3:0] A, [3:0] B, [3:0] C, [3:0] D,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y
    );
    
    assign Y = Enable ? (Sel[1] ? (Sel[0] ? D : C) : (Sel[0] ? B : A)) : 4'd0;
    
endmodule
