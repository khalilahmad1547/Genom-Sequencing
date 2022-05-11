`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 12:05:18 AM
// Design Name: 
// Module Name: mapper
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
This is a single core for the mapper. it takes read and reference genome and gives the location whear it mappes
to the reference genome.
PARAMS:

INPUTS:

OUTPUT:
*/

module mapper#(parameter m = 24,
               parameter n = 5)
              (input [m-1:0] read,
               input [m-1:0] ref_gen,
               input [n-1:0] limit,
               input         clk,
               output        isOK);
    // to carry calculated error of the read from the ref genome
    wire [n-1:0] error;
    
    // an instant of the Diff module
    diff #(.m(m),
           .n(n)) 
    diff_inst(.read(read),
              .ref_gen(ref_gen),
              .clk(clk),
              .error(error));
    
    // Comparator to compare calculated error and the limit of the error given
    comparator #(.n(n))
    comparator_inst (.error(error),
                     .limit(limit),
                     .clk(clk),
                     .isOk(isOK));
endmodule
