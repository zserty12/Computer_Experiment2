`timescale 1ns / 1ps

module twobc_tbv;
reg aa,bb,cc,dd;
wire f1,f2,f3;

twobc u_twobc (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.f1(f1),
.f2(f2),
.f3(f3) );

initial begin 
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end
always begin
    aa = #20 ~aa;
    bb = #30 ~bb;
    cc = #40 ~cc;
    dd = #50 ~dd;
end
initial begin
    #1000
    $finish;
end
endmodule
