`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2022 06:24:03 PM
// Design Name: 
// Module Name: Sequencer
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

// let k = 12 -> m = 12 * 2 = 24 bits
// total bases = n = 9626243
// total reads = n - k + 1 = 9626243 - 12 + 1 = 9626232 = 
// max error = 12 edits = 4 bits
// total locations in the genome is 9626243 = 24 bits
module Sequencer    #(parameter m = 24,
                      parameter n = 4,
                      parameter p = 24,
                      parameter a = 24, 
                      parameter b = 24)
                     (
                      input  [m-1:0]     read,
                      input  [m-1:0]     ref_gen,
                      input  [n-1:0]     limit,
                      input  [a-1:0]     t_reads,
                      input  [b-1:0]     t_ref_gen,
                      input              clk,
                      output [m+p-1:0]   read_loc,
                      output             ref_gen_done,
                      output             toStore
                     );

  wire next_read;
  wire next_ref_gen;
  wire read_cnt_reset;
  wire ref_gen_cnt_reset;
  wire done;
  wire reads_done;
  
  Sequencer_DP #(.m(m),
                 .n(n),
                 .p(p),
                 .a(a),
                 .b(b))
  Sequencer_DP_inst (.read(read),
                     .ref_gen(ref_gen),
                     .limit(limit),
                     .next_read(next_read),
                     .next_ref_gen(next_ref_gen),
                     .t_reads(t_reads),
                     .t_ref_gen(t_ref_gen),
                     .clk(clk),
                     .read_cnt_reset(read_cnt_reset),
                     .ref_gen_cnt_reset(ref_gen_cnt_reset),
                     .read_loc(read_loc),
                     .done(done),
                     .reads_done(reads_done),
                     .ref_gen_done(ref_gen_done),
                     .toStore(toStore));
  
  Sequencer_CU Sequencer_CU_inst(.done(done),
                                 .reads_done(reads_done),
                                 .ref_gen_done(ref_gen_done),
                                 .clk(clk),
                                 .next_read(next_read),
                                 .read_cnt_reset(read_cnt_reset),
                                 .ref_gen_cnt_reset(ref_gen_cnt_reset));
endmodule
