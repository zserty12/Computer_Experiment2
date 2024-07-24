`timescale 1ns / 1ps

module boolean_1_tbv;
reg aa,bb,cc;
wire r1;

boolean_1 u_boolean_1 (
.a(aa),
.b(bb),
.c(cc),
.r1(r1) );

initial begin 
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
end
always begin
    aa = #20 ~aa;
    bb = #40 ~bb;
    cc = #60 ~cc;
end
initial begin
    #1000
    $finish;
end
    
endmodule
