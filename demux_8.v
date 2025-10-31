`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 09:33:47 AM
// Design Name: 
// Module Name: demux_8
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


module demux_8(

    input [7:0] in,
    input [1:0] Sel,
    output [7:0] Y1, [7:0] Y2, [7:0] Y3, [7:0] Y4
    );
    
    assign Enable = 1'b1;
    
    assign Y1 = Enable ? (Sel == 0 ? in : 8'd0) : 8'd0;
    assign Y2 = Enable ? (Sel == 1 ? in : 8'd0) : 8'd0;
    assign Y3 = Enable ? (Sel == 2 ? in : 8'd0) : 8'd0;
    assign Y4 = Enable ? (Sel == 3 ? in : 8'd0) : 8'd0;
    
endmodule
