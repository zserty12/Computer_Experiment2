`timescale 1ns / 1ps

module FA_tbv;
reg aa,bb,ci;
wire s,co;

FA u_FA (
.a(aa),
.b(bb),
.c_in(ci),
.s(s),
.c_out(co) );

initial begin
    aa = 1'b0;
    bb = 1'b0;
    ci = 1'b0;
end
always begin
    aa = #20 ~aa;
    bb = #30 ~bb;
    ci = #40 ~ci;
end
initial begin
    #1000
    $finish;
end
endmodule
