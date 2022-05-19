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
INPUTS:
    done         -> 1 bit signal for weather in process(0) or done(1) for single read
    reads_done   -> 1 bit signal for weather all reads are processed(1) or not(0)
    ref_gen_done -> 1 bit signal for weather all pieces of reference genome is done(1), or not(0)
OUTPUTS:
    next_read
    read_cnt_reset
    read_cnt_reset
*/

module Sequencer_CU(input      done,
                    input      reads_done,
                    input      ref_gen_done,
                    input      clk,
                    output reg next_ref_gen,
                    output reg next_read,
                    output reg read_cnt_reset,
                    output reg ref_gen_cnt_reset);
      
      always @(posedge clk) begin
        if(done) next_read <= 1'b1;
        else next_read <= 1'b0;
      end
      
      always @(posedge clk) begin
        if(reads_done) read_cnt_reset <= 1'b1;
        else read_cnt_reset <= 1'b0;
      end
      
      always @(posedge clk) begin
          if(ref_gen_done)begin
            ref_gen_cnt_reset <= 1'b1;
            next_ref_gen <= 1'b1;  
          end   
        else begin
           ref_gen_cnt_reset <= 1'b0; 
           next_ref_gen <= 1'b0;
        end
      end
endmodule
