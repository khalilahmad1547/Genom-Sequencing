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

parameter m = 12;
parameter n = 3;
parameter p = 10;

// time to waite in each itreation
parameter period = 10;

// clock cycle wait
parameter clk_flip = 2;

reg  [m-1:0]   read;
reg  [m-1:0]   ref_gen;
reg  [n-1:0]   limit;
reg  [p-1:0]   loc;
reg            clk;
wire [m+p-1:0] read_loc;
wire           toStore;

// total reads in the file
parameter t_read = 10;
parameter t_ref_gens = 10;
// input data's vector
reg [m-1:0] read_file[0:t_read-1];
reg [m-1:0] ref_file[0:t_ref_gens-1];

// for loops
integer i, j, k;

// for output file
integer out_file;

mapper  #(.m(m),
          .n(n))
mapper_inst(.read(read),
            .ref_gen(ref_gen),
            .clk(clk),
            .limit(limit),
            .loc(loc),
            .read_loc(read_loc),
            .toStore(toStore));

initial begin
    clk = 0;
    limit = 3;
    loc = 105;
end
always #clk_flip
    clk = ~clk;
    
initial begin
// feeding data
    $readmemb("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Data/temp_reads.txt", read_file);
    $readmemb("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Data/temp_ref_gen.txt", ref_file);

    
    
    for (j=0; j<t_ref_gens; j=j+1)
        begin
            ref_gen = ref_file[j];
            for (i=0; i<t_read; i=i+1)
            begin
                read = read_file[i];
                //$display(read);
                #period;
            end
        end
end

initial begin
// writing results data
    out_file = $fopen("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Data/output.txt", "w");
    
    for (k=0; k<t_read*t_ref_gens; k=k+1)
        begin
            $fdisplay(out_file, "%b %b", read_loc, toStore);
            //$display("->%b %b", read_loc, toStore);
            #period;
        end
    
    $fclose(out_file);
    $finish;
end
endmodule
