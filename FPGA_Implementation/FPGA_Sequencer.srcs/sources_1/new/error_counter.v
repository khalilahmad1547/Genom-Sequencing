`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2022 03:37:13 AM
// Design Name: 
// Module Name: error_counter
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
/*
It simply counts the number of 1's in the bit stream with fixed length.
PARAMS:
    m       -> total number of bits in the input bit stream
    n       -> maximum number of bits in the output number
INPUTS:
    stream  -> bit stream for which we have to count
OUTPUT:
    count   -> gives total number of 1's in the stream
*/

module error_counter #(parameter m = 24,
                       parameter n = 7)
                      (input [m-1:0] stream,
                       input clk,
                       output reg [n-1:0] count = 0
                       );
     integer i = 0;
     always @(posedge clk) begin
         count = 0;
         for(i = 0; i < m; i = i+1)
            count = count + stream[i];
     end
endmodule