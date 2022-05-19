`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2022 06:40:31 PM
// Design Name: 
// Module Name: diff
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
It calculates the errors(n bit long) between a read(m bit long) and a piece refrence genome(m bit long) of same length
PARAMS:
    m       -> total number of bits in the read & refrence genome piece
    n       -> maximum number of bits in the error which can be in m bits of read
INPUTS:
    read    -> m bit long read
    ref_gen -> m bit long piece of refrence genome
    clk     -> clock signal
OUPUTS:
    error   -> n bit number, which shows the total number of edit btween read and refrence genome
*/

module diff #(parameter m = 24,
              parameter n = 4)
             (input [m-1:0] read,
              input [m-1:0] ref_gen,
              input clk,
              output [n-1:0] error);
    
    wire [(m/2)-1:0] gen_mask;   // for genreated mask from the Hamming Mask module
    
    // a Hamming Mask instant which will genreate mask 
    hamming_mask #(.m(m)) 
    hamming_mask_inst(.read(read),
                      .ref_gen(ref_gen),
                      .clk(clk),
                      .mask(gen_mask));
    error_counter #(.m(m/2),
                    .n(n))
    ec_inst(.stream(gen_mask),
            .clk(clk),
            .count(error));
endmodule
