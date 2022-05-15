`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2022 01:56:40 PM
// Design Name: 
// Module Name: clk_counter
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
A special type of counter which counts the number of clock cycles passed.
PARAMS:
    b   -> number of bits in total cycles which is to be count.
INPUTS:
    cycles  -> a b bit number, to which we want to count.
OUTPUTS:
    times_up -> 1 bit signal, weather the given number of cycles is passed(1) or not(0)
*/

module clk_counter #(parameter b = 8)(
    input [b-1:0]  cycles,
    input          clk,
    output         times_up,
    output [b-1:0] p_count
    );
    wire reset;
    
  counter       #(.b(b)) 
  counter_inst  (.initial_count(0),
                 .inc(1),
                 .max_to_count(cycles),
                 .enb(clk),
                 .upCount(1),
                 .reset(reset),
                 .clk(clk),
                 .limit_over(times_up));
  assign reset = times_up;
  
endmodule
