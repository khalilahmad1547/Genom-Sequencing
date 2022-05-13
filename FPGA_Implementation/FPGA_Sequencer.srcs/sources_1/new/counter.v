`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2022 03:44:23 AM
// Design Name: 
// Module Name: counter
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
A simple up/down counter which can count to a given limit, when limit is crossed it genreates an
intrupt.
PARAMS:
    b   -> b bit counter, number of bits to make counter.
INPUTS:
    inc     -> b bit number to increment/decrement on each command.
    enb     -> enable pin, 1 to enable, 0 to disable
    upCount -> 1 means count up, 0 means to decrement the count by inc amount.
    max_to_count -> b bit number, to which counter will max count, when this limit reached it genreates the intrupt.
    reset   -> 1 bit to reset the counter to inital_count
    initial_count -> b bit number which, from which counter will start counting.
OUTPUTS:
    p_count -> b bit number which shows the present count, at which counter is currently is.
    limit_over  -> 1 bit signle which represent the given limit is reached(1) or not(0)
*/

module counter #(parameter b = 8)
                (input      [b-1:0] initial_count,
                 input      [b-1:0] inc,
                 input      [b-1:0] max_to_count,
                 input              enb,
                 input              upCount,
                 input              reset,
                 input              clk,
                 output reg [b-1:0] p_count,
                 output reg         limit_over);
       
       always @(posedge clk) begin
            if(reset) begin
                p_count <= initial_count;
            end
            else begin
                if(enb) begin
                    case(upCount)
                        1'b1: p_count <= p_count + inc;
                        1'b0: p_count <= p_count - inc;
                    endcase
                end
                else p_count <= p_count;
            end
       end
       
       always @(posedge clk) begin
            if(p_count == max_to_count) begin
                limit_over <= 1'b1;
            end
            else begin
                limit_over <= 1'b0;
            end
       end
endmodule
