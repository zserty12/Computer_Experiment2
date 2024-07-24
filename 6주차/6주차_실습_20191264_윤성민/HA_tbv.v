`timescale 1ns / 1ps

module HA_tbv;
reg aa,bb;
wire s,c;

HA u_HA (
.a(aa),
.b(bb),
.s(s),
.c(c) );

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
