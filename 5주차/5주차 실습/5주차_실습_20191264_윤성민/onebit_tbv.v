`timescale 1ns / 1ps

module onebit_tbv;
reg aa,bb;
wire r1,r2;

onebit u_onebit (
.a(aa),
.b(bb),
.r1(r1),
.r2(r2),
.r3(r3),
.r4(r4 ) );

initial begin 
    aa = 1'b0;
    bb = 1'b0;
end
always begin
    aa = #20 ~aa;
    bb = #30 ~bb;
end
initial begin
    #1000
    $finish;
end
    
endmodule
