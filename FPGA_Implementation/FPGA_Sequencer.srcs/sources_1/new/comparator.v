`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2022 01:40:54 AM
// Design Name: 
// Module Name: comparator
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
It compare the error calculated from masks and the limit givn to us.
returns 1 if error < limit
        0 else
PARAMS:
    n       -> number of bits in error
INPUTS:
    error    -> n bit long error
    limit    -> n bit long threshold of error
    clk     -> clock signal
OUPUTS:
    isOk   -> weather read have less error(1, logical high) or not(0 logical low)
*/

module comparator #(parameter n = 5)(
    input [n-1:0] error,
    input [n-1:0] limit,
    input         clk,
    output reg    isOk = 1
    );
    
    always @(posedge clk) begin
        if(error > limit) begin
            isOk <= 0;
        end
        else isOk <= 1;
    end
    
endmodule
