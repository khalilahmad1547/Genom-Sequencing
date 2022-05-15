`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2022 01:57:41 PM
// Design Name: 
// Module Name: clk_counter_tb
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


module clk_counter_tb();

parameter b = 8;

parameter clk_flip = 2;
parameter period = 10;

reg [b-1:0] cycles;
reg clk;
wire times_up;
wire [b-1:0] p_count;

clk_counter         #(.b(b))
clk_counter_inst    (.cycles(cycles),
                     .clk(clk),
                     .times_up(times_up),
                     .p_count(p_count));

// clock
initial begin
    clk = 0;
    cycles = 10;
end
always #clk_flip
    clk = ~clk;

initial begin
    #100
    $finish;
end

endmodule
