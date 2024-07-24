`timescale 1ns / 1ps

module HS_tbv;
reg aa,bb;
wire b,d;

HS u_HS (
.a(aa),
.b(bb),
.bor(b),
.D(d) );

initial begin
    aa = 1'b0;
    bb = 1'b0;
end
always begin
    aa = #20 ~aa;
    bb = #30 ~bb;
end
initial begin
    #1000
    $finish;
end
endmodule
