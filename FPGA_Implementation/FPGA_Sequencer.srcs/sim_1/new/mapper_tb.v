`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2022 12:06:37 AM
// Design Name: 
// Module Name: mapper_tb
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


module mapper_tb();

parameter m = 8;
parameter n = 3;

reg [m-1:0] read;
reg [m-1:0] ref_gen;
reg clk;
reg [n-1:0] limit;
wire        isOk;

mapper  #(.m(m),
          .n(n))
mapper_inst(.read(read),
            .ref_gen(ref_gen),
            .clk(clk),
            .limit(limit),
            .isOK(isOK));

initial begin
    clk = 0;
    limit = 3'b010;
end
always #2
    clk = ~clk;
    
initial begin
    read <= 8'b0000_0000;
    ref_gen <= 8'b0000_0000;
    #10
    read <= 8'b0100_0100;
    ref_gen <= 8'b0001_0001;
    #10
    read <= 8'b0010_0000;
    ref_gen <= 8'b0010_0000;
    #10
    read <= 8'b0011_0000;
    ref_gen <= 8'b0000_0000;
    #10
    read <= 8'b0000_0000;
    ref_gen <= 8'b0000_0011;
    #10
    read <= 8'b0001_0000;
    ref_gen <= 8'b0001_0000;
    #10
    read <= 8'b0011_0000;
    ref_gen <= 8'b0000_0011;
    #10
    $finish;
end

endmodule
