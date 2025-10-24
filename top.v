module top(
    input [15:0] sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC,
    output [15:0] led
    );
    
    
    wire [3:0] CEO;
    assign CEO = sw[3:0];
    
    wire [3:0] You;
    assign You = sw[7:4];
    
    wire [3:0] Fred;
    assign Fred = sw[11:8];
    
    wire [3:0] Jill;
    assign Jill = sw[15:12];
    
    wire [3:0] local_lib;
    assign local_lib = led[3:0];
    
    wire [3:0] fire_dept;
    assign fire_dept = led[7:4];
    
    wire [3:0] school;
    assign school = led[11:8];
    
    wire [3:0] rib_shack;
    assign rib_shack = led[15:12];
    
    wire [3:0] out;
    
    ternary_4_mux mux(
        .Enable(~btnC),  // Negate for the board
        .A(CEO),
        .B(You),
        .C(Fred),
        .D(Jill),
        .Sel({btnU, btnL}),
        .Y(out)
    );
    
    ternary_4_demux demux(
        .Enable(~btnC),  // Negate for the board
        .in(out),
        .Sel({btnR, btnD}),
        .Y1(local_lib),
        .Y2(fire_dept),
        .Y3(school),
        .Y4(rib_shack)
    );
        
    
endmodule
