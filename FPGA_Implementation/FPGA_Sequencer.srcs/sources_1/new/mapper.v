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
    loc     -> p bits starting location of the reference genome
OUTPUT:
    read_loc -> m + p bits with first m bits of read and p bits for locations
    done     -> 1 bit signal for weather in process(0) or done(1)
    toStore  -> 1 bit number, weather it is worth to store the location data to FIFO or not
*/

module mapper#(parameter m = 24,
               parameter n = 5,
               parameter p = 10)
              (input  [m-1:0]   read,
               input  [m-1:0]   ref_gen,
               input  [n-1:0]   limit,
               input  [p-1:0]   loc,
               input            clk,
               output [m+p-1:0] read_loc,
               output           toStore);
    // to carry calculated error of the read from the ref genome
    wire [n-1:0] error;
    wire         isOK;
    
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
    
    // it will pass read_loca only if read mapes, or it will gives all 0s 
    assign read_loc = {m+p{isOK}} & {read, loc};
    
    // genreating toStore signal
    assign toStore = |read_loc;
    
endmodule
