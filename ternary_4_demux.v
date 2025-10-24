module ternary_4_demux(
    input [3:0] in,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y1, [3:0] Y2, [3:0] Y3, [3:0] Y4
    );
    
    assign Y1 = Enable ? (Sel == 0 ? in : 4'd0) : 4'd0;
    assign Y2 = Enable ? (Sel == 1 ? in : 4'd0) : 4'd0;
    assign Y3 = Enable ? (Sel == 2 ? in : 4'd0) : 4'd0;
    assign Y4 = Enable ? (Sel == 3 ? in : 4'd0) : 4'd0;
    
endmodule
