`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2022 06:25:21 PM
// Design Name: 
// Module Name: Sequencer_DP_tb
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


module Sequencer_DP_tb();

// params
parameter clk_flip = 5;
parameter period = 10;

parameter m = 16;
parameter n = 3;
parameter p = 4;
parameter a = 4;
parameter b = 4;

// inputs
reg  [m-1:0]     read;
reg  [m-1:0]     ref_gen;
reg  [n-1:0]     limit;
reg              next_read;
reg              next_ref_gen;
reg  [a-1:0]     t_reads;
reg  [b-1:0]     t_ref_gen;
reg              clk;
reg              read_cnt_reset;
reg              ref_gen_cnt_reset;

// outputs
wire [m+p-1:0]   read_loc;
wire             done;
wire             reads_done;
wire             ref_gen_done;
wire             toStore;

// input vector
reg [m-1:0] reads_v [0:a-1];
reg [m-1:0] ref_gens_v [0:b-1];

// loop variables
integer i = 0;
integer j = 0;
integer k = 0;
integer out_file;

// instant to test
Sequencer_DP         #(.m(m),
                       .n(n),
                       .p(p),
                       .a(a), 
                       .b(b))
Sequencer_DP_inst   (
                       .read(read),
                       .ref_gen(ref_gen),
                       .limit(limit),
                       .next_read(next_read),
                       .next_ref_gen(next_ref_gen),
                       .t_reads(t_reads),
                       .t_ref_gen(t_ref_gen),
                       .clk(clk),
                       .read_cnt_reset(read_cnt_reset),
                       .ref_gen_cnt_reset(ref_gen_cnt_reset),
                       .read_loc(read_loc),
                       .done(done),
                       .reads_done(reads_done),
                       .ref_gen_done(ref_gen_done),
                       .toStore(toStore)
                    );

// clock
initial begin
    clk = 0;
    limit = 3;
    next_read = 1'b0;
    t_reads = 10;
    t_ref_gen = 10;
    read_cnt_reset = 1'b0;
    ref_gen_cnt_reset = 1'b0;
    next_ref_gen = 1'b0;
end
always #clk_flip
    clk = ~clk;

initial begin
    // feeding testing data
    $readmemb("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Data/temp_reads.txt", reads_v);
    $readmemb("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Data/temp_ref_gen.txt", ref_gens_v);

    for (j=0; j<t_ref_gen; j=j+1) begin
        ref_gen = ref_gens_v[j];
        for (i=0; i<t_reads; i=i+1) begin
            read = reads_v[i];
            #period;
        end
    end
end

initial begin
// writing results data
    out_file = $fopen("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Data/output.txt", "w");
    
    for (k=0; k<t_reads*t_ref_gen; k=k+1)
        begin
            $fdisplay(out_file, "%b %b", read_loc, toStore);
            //$display("->%b %b", read_loc, toStore);
            #period;
        end
    
    $fclose(out_file);
    $finish;
end

endmodule
