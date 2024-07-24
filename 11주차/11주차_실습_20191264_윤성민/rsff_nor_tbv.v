`timescale 1ns / 1ps

module rsff_nor_tbv;
reg s,r,cp;
wire q,nq;

rsff_nor u_rsff_nor (
.s(s), .r(r), .cp(cp),
.q(q), .nq(nq) );

initial begin
    s = 1'b0;
    r = 1'b0;
    cp = 1'b1;
end
always @(s or r or cp) begin
    s <= #40 ~s;
    r <= #20 ~r;
    cp <= #10 ~cp;
end
initial begin
    #400
    $finish;
end
endmodule
