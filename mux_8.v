`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 09:33:32 AM
// Design Name: 
// Module Name: mux_8
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


module mux_8(
    input [7:0] A, [7:0] B, [7:0] C, [7:0] D,
    input [1:0] Sel,
    output [7:0] Y
    );
    
    assign Y = (Sel[1] ? (Sel[0] ? D : C) : (Sel[0] ? B : A));
    
endmodule
