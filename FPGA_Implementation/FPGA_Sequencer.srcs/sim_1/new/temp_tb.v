`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2022 01:40:24 PM
// Design Name: 
// Module Name: temp_tb
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


module temp_tb();

// params
parameter clk_flip = 5;
parameter period = 10;

parameter b = 10;


// inputs
reg clk;
// outputs

// input vector

// instant to test

// clock
initial begin
    clk = 0;
end
always #clk_flip
    clk = ~clk;

initial begin
// feeding testing data
//    $readmemb("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Data/temp.txt", file);

//    for (i=0; i<t_read; i=i+1)
//        begin
//            read <= file[i];
//            //$display(read);
//            #period;
//        end
end

initial begin
// writing results data
//    out_file = $fopen("C:/Users/khali/Downloads/Documents/Computer_Engineering/Semester_08/FYP_III/Class/Genom-Sequencing/Data/output.txt", "w");
    
//    for (j=0; j<t_read; j=j+1)
//        begin
//            $fdisplay(out_file, "%b %b", read_loc, toStore);
//            //$display("->%b %b", read_loc, toStore);
//            #period;
//        end
    
//    $fclose(out_file);
//    $finish;
end

endmodule
