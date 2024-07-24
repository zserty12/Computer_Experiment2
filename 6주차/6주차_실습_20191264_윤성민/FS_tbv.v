`timescale 1ns / 1ps

module FS_tbv;
reg aa,bb,bi;
wire d,bo;

FS u_FS (
.a(aa),
.b(bb),
.b_in(bi),
.b_out(bo),
.D(d) );

initial begin
    aa = 1'b0;
    bb = 1'b0;
    bi = 1'b0;
end
always begin
    aa = #20 ~aa;
    bb = #30 ~bb;
    bi = #40 ~bi;
end
initial begin
    #1000
    $finish;
end
endmodule
