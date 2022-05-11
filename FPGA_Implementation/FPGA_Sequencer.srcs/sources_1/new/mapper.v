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
This is a single core for the mapper. it takes read, reference genome, error limit and 
location of the current reference genome and gives the location whear it mappes
to the reference genome.
if it gives output as zeros it means it not maped to the given reference genome.
PARAMS:
    m       -> number of bits in Read and refernce genome
    n       -> number of bits for allowed error limit
    p       -> number of bits required for locations of a read in the whole genome
INPUTS:
    read    -> m bits for read to be mapped
    ref_gen -> m bits for reference genome to which read is to be mapped
    limit   -> n bits number for the allow limit of error
    
OUTPUT:
    isOK    -> 1 bit bolean read mapes(1) or not(0)
*/

module mapper#(parameter m = 24,
               parameter n = 5,
               parameter p = 10)
              (input [m-1:0] read,
               input [m-1:0] ref_gen,
               input [n-1:0] limit,
               input [p-1:0] loc,
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
