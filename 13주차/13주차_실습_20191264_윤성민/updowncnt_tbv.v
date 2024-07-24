`timescale 1ns / 1ps

module updowncnt_tbv;
reg clk, rst, ud;
wire [3:0] out;
wire [6:0] seg;

updowncnt u_updowncnt (
.clk(clk), .rst(rst), .ud(ud),
.out(out), .seg(seg) );


always #500 ud = ~ud;
always #10 clk = ~clk;
initial begin
    clk <= 1'b0;
    ud <= 1'b1;
    rst <= 1'b0;
    #20 rst <= 1'b1;
    #80 rst <= 1'b0;
    #50 rst <= 1'b0;
end
endmodule
