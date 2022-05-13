`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 03:43:53 AM
// Design Name: 
// Module Name: Reg_tb
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


module Reg_tb();

parameter d = 8;

reg [d-1:0]  data = 8'd6;
reg          write = 1'b0;
reg          clk;
reg          reset = 0;
wire [d-1:0] out;

Reg #(.d(d))
reg_inst(.data(data),
         .write(write),
         .clk(clk),
         .reset(reset),
         .out(out));    

initial
    clk = 0;
always #2
    clk = ~clk;

initial begin
    #4
    write = 1'b1;
    #4
    write = 1'b0;
    #4
    reset = 1'b1;
    #4
    reset = 1'b0;
    #4
    write = 1'b1;
    #4
    $finish;
end


endmodule
