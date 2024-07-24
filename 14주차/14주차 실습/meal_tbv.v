`timescale 1ns / 1ps

module meal_tbv;
reg clk, rst, x;
wire [4:0] seq;
wire z;

meal u_meal (
.clk(clk), .rst(rst), .x(x),
.seq(seq), .z(z) );

initial begin 
    clk = 1'b0;
    rst = 1'b0;
    x = 1'b0;
end
always clk = #10 ~clk;
always x = #17 ~x;
initial rst <= #800 ~rst;
endmodule
