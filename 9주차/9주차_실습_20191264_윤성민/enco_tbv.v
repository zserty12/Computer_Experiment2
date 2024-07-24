`timescale 1ns / 1ps

module enco_tbv;
reg d0,d1,d2,d3;
wire e0,e1;

enco u_enco (
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
 .e0(e0),
 .e1(e1) );

initial begin 
    d0 = 1'b0;
    d1 = 1'b0;
    d2 = 1'b0;
    d3 = 1'b0;
end 
always @(d3 or d2 or d1 or d0)begin
    d0 <= #10 ~d0;
    d1 <= #20 ~d1;
    d2 <= #40 ~d2;
    d3 <= #80 ~d3;
end
initial begin
    #1000
    $finish;
end
endmodule
