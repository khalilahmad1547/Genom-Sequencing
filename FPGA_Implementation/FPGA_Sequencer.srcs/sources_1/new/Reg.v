`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 03:43:07 AM
// Design Name: 
// Module Name: Reg
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
This is a simple regester which will have more controls like write enable pin, 
whether write data to register or not and reset pin.
PARAMS:
    d       -> number of bits to store in register
INPUTS:
    data    -> d bits of data to be stored in the regester
    write   -> 1 bit controle signal, 1 means write data to register
    reset   -> 1 bit reset pin, when high set regester to zero.
OUPUTS:
    output  -> d bits of data which is stored in the register
*/

module Reg #(parameter d = 24)
    (
        input [d-1:0]      data,
        input              write,
        input              clk,
        input              reset,
        output reg [d-1:0] out = 0
    );
    
    always @(posedge clk) begin
        if(reset) out <= 0;
        else begin
            case(write)
                1'b1:       out <= data;
                default:    out <= out;
            endcase
        end
    end
endmodule
