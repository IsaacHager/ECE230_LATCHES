`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 09:12:49 AM
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
    input E, D,
    output reg Q,
    output notQ
    );
    
    always @(E, D) begin 
        if (E)
            Q <= D;
    end
    
    assign notQ = ~Q;
    
endmodule
