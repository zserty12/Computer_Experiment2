`timescale 1ns / 1ps

module epbc_tbv;
reg aa,bb,cc,dd,epb;
wire pec;

epbc u_epbc (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.epb(epb),
.pec(pec) );

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
    epb = 1'b0;
end
always begin
    aa = #20 ~aa;
    bb = #30 ~bb;
    cc = #40 ~cc;
    dd = #50 ~dd;
    epb = #60 ~epb;
end
initial begin
    #1000
    $finish;
end 
endmodule
