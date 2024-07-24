`timescale 1ns / 1ps

module bpa_tbv;
reg a3,a2,a1,a0,b3,b2,b1,b0,c_in;
wire s3,s2,s1,s0, c_out;

bpa u_bpa (
.a3(a3), .a2(a2), .a1(a1), .a0(a0),
.b3(b3), .b2(b2), .b1(b1), .b0(b0),
.c_in(c_in),
.s3(s3), .s2(s2), .s1(s1), .s0(s0),
.c_out(c_out) );
initial begin 
    a3 = 1'b0;
    a2 = 1'b0;
    a1 = 1'b0;
    a0 = 1'b0;
    b3 = 1'b0;
    b2 = 1'b0;
    b1 = 1'b0;
    b0 = 1'b0;
    c_in = 1'b0;
 end
 always @(a3 or a2 or a1 or a0 or b3 or b2 or b1 or b0) begin
    a3 <= #400 ~a3;
    a2 <= #200 ~a2;
    a1 <= #100 ~a1;
    a0 <= #50 ~a0;
    b3 <= #25 ~b3;
    b2 <= #12.5 ~b2;
    b1 <= #6.25 ~b1;
    b0 <= #3.125 ~b0;
end
initial begin 
    #800
    $finish;
end
endmodule
