`timescale 1ns / 1ps

module demux_tbv;
reg  ff,aa,bb;
wire w,x,y,z;

demux u_demux (
.f(ff),
.a(aa),
.b(bb),
.w(w),
.x(x),
.y(y),
.z(z) );

initial begin
    ff = 1'b0;
    aa = 1'b0;
    bb = 1'b0;
end

always @(ff or aa or bb) begin
    ff <= #40 ~ff;
    aa <= #20 ~aa;
    bb <= #10 ~bb;
end

initial begin
    #400
    $finish;
end
endmodule
