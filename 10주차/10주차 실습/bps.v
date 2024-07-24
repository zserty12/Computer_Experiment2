`timescale 1ns / 1ps

module bps(
    input a3,a2,a1,a0,b3,b2,b1,b0,
    input c_in,
    output s0,s1,s2,s3,c1,c2,c3, c_out
    );
    assign s0=(a0^(b0^c_in))^c_in;
    assign c1=(c_in&(a0^(b0^c_in))) | (a0&(b0^c_in));
    assign s1=(a1^(b1^c_in))^c1;
    assign c2=(c1&(a1^(b1^c_in))) | (a1&(b1^c_in));
    assign s2=(a2^(b2^c_in))^c2;
    assign c3=(c2&(a2^(b2^c_in))) | (a2&(b2^c_in));
    assign s3=(a3^(b3^c_in))^c3;
    assign c_out=(c3&(a3^(b3^c_in))) | (a3&(b3^c_in));
endmodule
