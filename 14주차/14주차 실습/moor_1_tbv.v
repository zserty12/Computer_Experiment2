`timescale 1ns / 1ps

module moor_1_tbv;
reg clk, rst, x;
wire [3:0] seq;
wire z;

moor_1 u_moor_1 (
.clk(clk), .rst(rst), .x(x),
.seq(seq), .z(z) );

initial begin 
    clk = 1'b0;
    rst = 1'b0;
    x = 1'b0;
end
always clk = #10 ~clk;
always x = #16 ~x;
initial rst <= #800 ~rst;
endmodule
