`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2022 06:42:09 PM
// Design Name: 
// Module Name: diff_tb
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


module diff_tb();

parameter m = 8;
parameter n = 3;

reg [m-1:0] read;
reg [m-1:0] ref_gen;
reg clk;
wire [n-1:0] error;

diff    #(.m(m),
          .n(n))
diff_inst(.read(read),
          .ref_gen(ref_gen),
          .clk(clk),
          .error(error));

initial
    clk = 0;
always #5
    clk = ~clk;
    
initial begin
    read <= 8'b0000_0000;
    ref_gen <= 8'b0000_0000;
    #15
    read <= 8'b0100_0000;
    ref_gen <= 8'b0000_0000;
    #15
    read <= 8'b0000_0000;
    ref_gen <= 8'b0010_0000;
    #15
    read <= 8'b0011_0000;
    ref_gen <= 8'b0000_0000;
    #15
    read <= 8'b0000_0000;
    ref_gen <= 8'b0000_0011;
    #15
    read <= 8'b0001_0000;
    ref_gen <= 8'b0001_0000;
    #15
    read <= 8'b0011_0000;
    ref_gen <= 8'b0000_0011;
    #15
    $finish; 
end
endmodule
