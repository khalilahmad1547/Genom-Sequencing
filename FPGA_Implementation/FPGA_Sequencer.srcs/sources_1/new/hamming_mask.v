`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2022 10:18:55 AM
// Design Name: 
// Module Name: hamming_mask
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
PARAMS:
    m       -> the length of a single read in bits
INPUTS:
    read    -> m bit long encoded signle read from the host PC
    ref_gen -> m bit long encoded piece of refrence genome from the host PC
OUPUTS:
    mask    -> m bit long hamming mask, 1 means mismatch
*/

module hamming_mask#(parameter m = 24)(
    input [m - 1:0]      read,
    input [m - 1:0]      ref_gen,
    input clk,
    output reg [m - 1:0] mask = 0
    );
    
    always @(posedge clk)
        mask <= read ^ ref_gen;
    
endmodule
