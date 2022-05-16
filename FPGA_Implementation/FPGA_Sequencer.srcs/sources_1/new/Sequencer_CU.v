`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2022 06:21:50 PM
// Design Name: 
// Module Name: Sequencer_CU
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
Sequencer module is splited into two parts
    1. Sequencer_DP (Data Path)
    2. Sequencer_CU (Controler Unit)
PARAMS:
    m            -> number of bits in Read and refernce genome
    n            -> number of bits for allowed error limit
    p            -> number of bits required for locations of a read in the whole genome
    a            -> number of bits required to represent total number of reads
    b            -> number of bits required to represent total pieces of reference genome
INPUTS:
    read         -> m bits for read to be mapped
    ref_gen      -> m bits for reference genome to which read is to be mapped
    limit        -> n bits number for the allow limit of error
    next_read    -> 1 bit signal, loads next read for processing (1), processign already loaded read.
    next_ref_gen -> 1 bit signal, loade next piece of refernce genome (1), processing already loaded refernce genome (0). 
    t_reads      -> a bit number, which shows total reads which have to be processed.
    t_ref_gen    -> b bit number, which shows total pieces of refrence genome.
OUTPUTS:
    read_loc     -> m + p bits with first m bits of read and p bits for locations
    done         -> 1 bit signal for weather in process(0) or done(1) for single read
    reads_done   -> 1 bit signal for weather all reads are processed(1) or not(0)
    ref_gen_done -> 1 bit signal for weather all pieces of reference genome is done(1), or not(0)
    toStore      -> 1 bit number, weather it is worth to store the location data to FIFO or not
*/

module Sequencer_CU(

    );
endmodule
