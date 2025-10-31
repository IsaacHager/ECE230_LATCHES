`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 09:13:10 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
    );
    
    wire outQ;
    wire outNotQ;
    
    D_Latch mem1(
        .E(btnC),
        .D(sw[0]),
        .Q(outQ),
        .notQ(outNotQ)
    );
    
    assign led[0] = outQ;
    assign led[1] = outNotQ;
    
    wire [7:0] in1;
    wire [7:0] in2;
    wire [7:0] in3;
    wire [7:0] in4;
    
    demux_8 demux(
        .in(sw[15:8]),
        .Sel(sw[7:6]),
        .Y1(in1),
        .Y2(in2),
        .Y3(in3),
        .Y4(in4)
    );
    
    wire [7:0] out1;
    wire [7:0] out2;
    wire [7:0] out3;
    wire [7:0] out4;
    
    wire en1;
    wire en2;
    wire en3;
    wire en4;
    
    demux_1 eDemux(
        .in(btnC),
        .Sel(sw[7:6]),
        .Y1(en1),
        .Y2(en2),
        .Y3(en3),
        .Y4(en4)
    );
    
    mem_8 byte1(
        .D(in1),
        .E(en1),
        .Q(out1)
    );
    
    mem_8 byte2(
        .D(in2),
        .E(en2),
        .Q(out2)
    );
    
    mem_8 byte3(
        .D(in3),
        .E(en3),
        .Q(out3)
    );
    
    mem_8 byte4(
        .D(in4),
        .E(en4),
        .Q(out4)
    );
    
    mux_8 mux(
        .A(out1),
        .B(out2),
        .C(out3),
        .D(out4),
        .Sel(sw[7:6]),
        .Y(led[15:8])
    );
    
endmodule
