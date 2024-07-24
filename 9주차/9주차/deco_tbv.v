`timescale 1ns / 1ps

module deco_tbv;
reg aa,bb;
wire d0,d1,d2,d3;

deco u_deco (
.a(aa), 
.b(bb),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3) );

initial begin 
    aa = 1'b0;
    bb = 1'b0;
end 
always @(aa or bb)begin
    aa <= #20 ~aa;
    bb <= #10 ~bb;
end
initial begin
    #500
    $finish;
end
endmodule
