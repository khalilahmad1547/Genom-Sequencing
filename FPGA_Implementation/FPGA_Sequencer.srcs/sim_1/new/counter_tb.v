`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2022 04:41:26 PM
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
reg [7:0] stream;
wire [2:0] count;

counter #(
          .m(8), 
          .n(3))
     test (
          .stream(stream),
          .count(count));
initial begin
    stream <= 8'b0000_0000; 
    #10
    stream <= 8'b0000_0001;
    #10
    stream <= 8'b0001_0001; 
    #10
    stream <= 8'b0011_0000; 
    #10
    stream <= 8'b0011_0001;
    #10
    $finish;
end

endmodule
