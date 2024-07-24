`timescale 1ns / 1ps

module shiftreg_tbv;
reg clk, in, rst;
wire [3:0] out;

shiftreg u_shiftreg (
.clk(clk), .in(in), .rst(rst),
.out(out) );

always #10 clk =  ~clk;
always #20 in = ~in;
initial begin 
    clk <= 1'b0;
    in <= 1'b0;
    rst <= 1'b0;
    #20 rst <= 1'b1;
    #80 rst <= 1'b0;
    #50 rst <= 1'b0;
end
endmodule
