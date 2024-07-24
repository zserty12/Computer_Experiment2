`timescale 1ns / 1ps

module shiftreg_tbv;
reg clk, in, rst;
wire [3:0] out;

shiftreg u_shiftreg (
.clk(clk), .in(in), .rst(rst),
.out(out) );

initial begin
    clk = 1'b0;
    rst = 1'b0;
    in= 1'b1;
end
always clk = #10 ~clk;
always in = #50 ~in;
initial rst <= #400 ~rst;

endmodule
