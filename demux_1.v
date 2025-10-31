`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 09:33:47 AM
// Design Name: 
// Module Name: demux_1
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


module demux_1(

    input in,
    input [1:0] Sel,
    output Y1, Y2, Y3, Y4
    );
    
    assign Enable = 1'b1;
    
    assign Y1 = Enable ? (Sel == 0 ? in : 1'd0) : 1'd0;
    assign Y2 = Enable ? (Sel == 1 ? in : 1'd0) : 1'd0;
    assign Y3 = Enable ? (Sel == 2 ? in : 1'd0) : 1'd0;
    assign Y4 = Enable ? (Sel == 3 ? in : 1'd0) : 1'd0;
    
endmodule
