`timescale 1ns / 1ps

module mux_tbv;
reg  s0, s1, aa, bb, cc, dd;
wire y;

mux u_mux (
.s0(s0),
.s1(s1),
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.y(y) );

initial begin
    s0 = 1'b0;
    s1 = 1'b0;
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always @(s0 or s1 or aa or bb or cc or dd) begin
    s0 <= #320 ~s0;
    s1 <= #160 ~s1;
    aa <= #80 ~aa;
    bb <= #40 ~bb;
    cc <= #20 ~cc;
    dd <= #10 ~dd;
end

initial begin
    #1000
    $finish;
end
endmodule
