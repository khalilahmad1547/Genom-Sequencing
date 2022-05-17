`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2022 06:25:21 PM
// Design Name: 
// Module Name: Sequencer_tb
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


module Sequencer_tb();
// PARAMS
parameter m = 140;
parameter n = 3;
parameter p = 16;
parameter a = 10; 
parameter b = 16;

parameter period = 5;

// loop variables
integer i;
integer j;
integer k;

// output file refrence
integer out_file;

// inputs
reg  [m-1:0]     read;
reg  [m-1:0]     ref_gen;
reg  [n-1:0]     limit;
reg  [a-1:0]     t_reads;
reg  [b-1:0]     t_ref_gen;
reg              clk;

// input vectors
reg [m-1:0] reads_v[0:693-1];
reg [m-1:0] ref_gen_v[0:48433-1];

// outputs
wire [m+p-1:0]   read_loc;
wire             reads_done;
wire             ref_gen_done;
wire             toStore;

Sequencer    #(.m(m),
               .n(n),
               .p(p),
               .a(a),
               .b(b))
Sequencer_inst(
              .read(read),
              .ref_gen(ref_gen),
              .limit(limit),
              .t_reads(t_reads),
              .t_ref_gen(t_ref_gen),
              .clk(clk),
              .read_loc(read_loc),
              .ref_gen_done(ref_gen_done),
              .toStore(toStore)
             );


initial begin
    clk = 0;
    limit = 4;
    t_reads = 693;
    t_ref_gen = 48433;
end
always #period clk = ~clk;


initial begin
// feeding testing data
    $readmemb("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Useful_functions/reads.fastq", reads_v);
    $readmemb("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Useful_functions/reference_genome.fa", ref_gen_v);

    for (i=0; i<t_ref_gen; i=i+1)
        begin
            ref_gen <= ref_gen_v[i];
            for (j = 0; j<t_reads; j = j+1) begin
                read <= reads_v[j];
                #15;
            end
        end
end

initial begin
// writing results data
    out_file = $fopen("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Useful_functions/output.txt", "w");
    
    for (k=0; k<t_reads*t_ref_gen; k=k+1)
        begin
            $fdisplay(out_file, "%b %b", read_loc, toStore);
            //$display("->%b %b", read_loc, toStore);
            #15;
        end
    
    $fclose(out_file);
    $finish;
end



endmodule
