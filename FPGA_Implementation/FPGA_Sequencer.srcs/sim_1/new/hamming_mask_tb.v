`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2022 10:27:45 AM
// Design Name: 
// Module Name: hamming_mask_tb
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


module hamming_mask_tb();
    reg [24 - 1:0]     read;
    reg [24 - 1:0]     ref_gen;
    reg clk;
    wire [24 - 1:0]    mask;
    
    hamming_mask test(
                      .read(read),
                      .ref_gen(ref_gen),
                      .clk(clk),
                      .mask(mask)
                        );
    initial
        clk = 0;
    always
        #5 clk = ~clk;
    
    initial begin
        read <= 24'b0;
        ref_gen <= 24'b1;
        #10
        read <= 24'b0;
        ref_gen <= 24'b0;
        #10
        read <= 24'b1;
        ref_gen <= 24'b1;
        #10
        $finish;
    end
endmodule
