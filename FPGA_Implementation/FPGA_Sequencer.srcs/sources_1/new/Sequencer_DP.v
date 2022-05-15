`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2022 06:23:24 PM
// Design Name: 
// Module Name: Sequencer_DP
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

module Sequencer_DP #(parameter m = 24,
                      parameter n = 3,
                      parameter p = 10,
                      parameter a = 10, 
                      parameter b = 10)
                     (
                      input  [m-1:0]     read,
                      input  [m-1:0]     ref_gen,
                      input  [n-1:0]     limit,
                      input              next_read,
                      input              next_ref_gen,
                      input  [a-1:0]     t_reads,
                      input  [b-1:0]     t_ref_gen,
                      input              clk,
                      input              read_cnt_reset,
                      input              ref_gen_cnt_reset,
                      output [m+p-1:0]   read_loc,
                      output             done,
                      output             reads_done,
                      output             ref_gen_done,
                      output             toStore
                     );
    // internal wires
    wire  [p-1:0]   loc;
    
    // internal regs
    
    // instants of modules used
    mapper    #(.m(m),
                .n(n),
                .p(p)) 
    mapper_inst (.read(read),
                 .ref_gen(ref_gen),
                 .limit(limit),
                 .loc(loc),
                 .clk(clk),
                 .read_loc(read_loc),
                 .toStore(toStore));
    
    // a clock counter which will count upto 5 clock cycles             
    clk_counter      #(.b(3))
    clk_counter_inst  (.cycles(5),
                       .clk(clk),
                       .times_up(done));
    
    // a counter to count number of read which have processed
    // and raise reads_done when limit reached.
    counter      #(.b(a))
    read_counter  (.initial_count(0),
                   .inc(1),
                   .max_to_count(t_reads),
                   .enb(next_read),
                   .upCount(next_read),
                   .reset(read_cnt_reset),
                   .clk(clk),
                   .p_count(),
                   .limit_over(reads_done));
    
    // a reference piece counter, and raise ref_gen_done when complete reference genome is done.
    counter      #(.b(b))
    ref_gen_cnter  (.initial_count(0),
                   .inc(1),
                   .max_to_count(t_ref_gen),
                   .enb(next_ref_gen),
                   .upCount(next_ref_gen),
                   .reset(ref_gen_cnt_reset),
                   .clk(clk),
                   .p_count(loc),
                   .limit_over(ref_gen_done));
endmodule
