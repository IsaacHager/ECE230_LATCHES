`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 09:45:02 AM
// Design Name: 
// Module Name: mem_8
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


module mem_8(
    input [7:0] D,
    input E,
    output [7:0] Q,
    output [7:0] notQ
    );
    
    D_Latch mem(
        .E(E),
        .D(D[0]),
        .Q(Q[0]),
        .notQ(notQ[0])
    );
    
    D_Latch mem1(
        .E(E),
        .D(D[1]),
        .Q(Q[1]),
        .notQ(notQ[1])
    );
    
    D_Latch mem2(
        .E(E),
        .D(D[2]),
        .Q(Q[2]),
        .notQ(notQ[2])
    );
    
    D_Latch mem3(
        .E(E),
        .D(D[3]),
        .Q(Q[3]),
        .notQ(notQ[3])
    );
    
    D_Latch mem4(
        .E(E),
        .D(D[4]),
        .Q(Q[4]),
        .notQ(notQ[4])
    );
    
    D_Latch mem5(
        .E(E),
        .D(D[5]),
        .Q(Q[5]),
        .notQ(notQ[5])
    );
    
    D_Latch mem6(
        .E(E),
        .D(D[6]),
        .Q(Q[6]),
        .notQ(notQ[6])
    );
    
    D_Latch mem7(
        .E(E),
        .D(D[7]),
        .Q(Q[7]),
        .notQ(notQ[7])
    );
    
endmodule
