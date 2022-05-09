`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2022 01:43:03 AM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();

parameter n = 5;

reg [n-1:0] error;
reg [n-1:0] limit;
reg         clk;
wire        isOk;

comparator #(.n(n)) 
    inst(.error(error),
         .limit(limit),
         .clk(clk),
         .isOk(isOK));

initial
    clk = 0;
always
    #5 clk = ~clk;

initial begin
    error <= 5'b0_0001;
    limit <= 5'b0_0010;
    #10
    error <= 5'b0_0010;
    limit <= 5'b0_0010;
    #10
    error <= 5'b0_0100;
    limit <= 5'b0_0010;
    #10
    error <= 5'b0_0000;
    limit <= 5'b0_0000;
    #10
    error <= 5'b1_0000;
    limit <= 5'b1_0000;
    #10
    $finish;
end
endmodule
