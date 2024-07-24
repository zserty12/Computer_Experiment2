`timescale 1ns / 1ps

module bcd_to_dec_tbv;
reg ww,xx,yy,zz;
wire a,b,c,d,e,f,g,h,i;

bcd_to_dec u_bcd_to_dec (
    .w(ww),
    .x(xx),
    .y(yy),
    .z(zz),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .h(h),
    .i(i) );

initial begin
    ww = 1'b0;
    xx = 1'b0;
    yy = 1'b0;
    zz = 1'b0;
end

always @(ww or xx or yy or zz) begin 
    ww <= #80 ~ww;
    xx <= #40 ~xx;
    yy <= #20 ~yy;
    zz <= #10 ~zz;
end

initial begin
    #800
    $finish;
end
endmodule
