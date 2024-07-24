`timescale 1ns / 1ps

module bpa(
    input a3,a2,a1,a0,b3,b2,b1,b0,
    input c_in,
    output s0,s1,s2,s3,c1,c2,c3, c_out
    );
    assign s0=(a0^b0)^c_in;
    assign c1=(c_in&(a0^b0)) | (a0&b0);
    assign s1=(a1^b1)^c1;
    assign c2=(c1&(a1^b1)) | (a1&b1);
    assign s2=(a2^b2)^c2;
    assign c3=(c2&(a2^b2)) | (a2&b2);
    assign s3=a3^b3^c3;
    assign c_out=(c3&(a3^b3)) | (a3&b3);
endmodule
