`timescale 1ns / 1ps

module dff_tbv;
reg d,cp;
wire q,nq;

dff u_dff (
.d(d), .cp(cp),
.q(q), .nq(nq) );

initial begin
    d = 1'b0;
    cp = 1'b0;
end
always @(d or cp) begin
    d <= #40 ~d;
    cp <= #20 ~cp;
end
initial begin
    #400
    $finish;
end
endmodule
