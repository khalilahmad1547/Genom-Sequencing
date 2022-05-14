`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2022 03:45:23 AM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();

// params
parameter clk_flip = 5;
parameter period = 10;

parameter b = 8;

// inputs
reg      [b-1:0] initial_count;
reg      [b-1:0] inc;
reg      [b-1:0] max_to_count;
reg              enb;
reg              upCount;
reg              reset;
reg              clk;
                 
// outputs
wire [b-1:0] p_count;
wire         limit_over;
// input vector
// instant to test
counter #(.b(b))
counter_inst(
             .initial_count(initial_count),
             .inc(inc),
             .max_to_count(max_to_count),
             .enb(enb),
             .upCount(upCount),
             .reset(reset),
             .clk(clk),
             .p_count(p_count),
             .limit_over(limit_over));
// clock
initial begin
initial_count = 0;
inc           = 1;
max_to_count  = 12;
enb           = 1'b0;
upCount       = 1'b0;
reset         = 1'b0;
clk           = 0;
end
always #clk_flip
    clk = ~clk;

// loops vars
integer i = 0;

// testing condition
initial begin
    reset = 1'b1;
    #period
    reset = 1'b0;
    enb = 1'b0;
    upCount = 1'b1;
    #period
    enb = 1'b1;
    upCount = 1'b1;
    #period
    enb = 1'b0;
    upCount = 1'b1;
    #period
    enb = 1'b1;
    upCount = 1'b0;
    #period
    enb = 1'b0;
    upCount = 1'b0;
    
    // counting till limit reached
    // to test limit_over
    for(i = 0; i < 20; i = i+1) begin
        #period
        enb = 1'b1;
        upCount = 1'b1;
    end
    
    #period
    reset = 1'b1;
    enb = 1'b0;
    upCount = 1'b0;
    #period
    enb = 1'b1;
    upCount = 1'b1;
    #period
    reset = 1'b1;
    enb = 1'b1;
    upCount = 1'b1;
    #period
    $finish;
end

endmodule
