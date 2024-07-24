`timescale 1ns / 1ps

module ringcnt_tbv;
reg clk, rst;
wire [3:0] out;

ringcnt u_ringcnt (
.clk(clk), .rst(rst), .out(out) );

always #10 clk = ~clk;

initial begin 
    clk <= 1'b0;
    rst <= 1'b0;
    #20 rst <= 1'b1;
    #80 rst <= 1'b0;
    #50 rst <= 1'b0;
end
endmodule
