`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 04:30:27 AM
// Design Name: 
// Module Name: FIFO_DP
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
FIFO module is splited into two parts
    1. Data Path
    2. Controle Unit
This is the Data Path part of the FIFO module.

PARAMS:
INPUTS:
OUPTS:
*/

module FIFO_DP #(parameter d = 24,
                 parameter c = 8)
                (
                    input [d-1:0] data,
                    input [d-1:0] initializ,
                    input shift,
                    input up_count,
                    input dwn_count,
                    input clk,
                    output [d-1:0] out
                 );
                 
      genvar i;
      wire Output[19:0]; 
      generate
        begin: first_reg 
               Reg #(.d(d)) Reg_inst(
                                        .data(data),
                                        .write(write),
                                        .clk(clk),
                                        .reset(reset),
                                        .out(out)
                                        );
         end
        for(i = 1; i < c; i = i+1) 
            begin: my_reg 
                   Reg #(.d(d)) Reg_inst(
                                            .data(data),
                                            .write(write),
                                            .clk(clk),
                                            .reset(reset),
                                            .out(out)
                                            ); 
            end 
      endgenerate
endmodule
