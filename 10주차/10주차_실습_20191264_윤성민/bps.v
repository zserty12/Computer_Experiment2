`timescale 1ns / 1ps

module bps(
    input [3:0] a,b,
    input bin,
    output [3:0] d, bout
    );
    wire b1,b2,b3;
    assign d[0]=(a[0]^b[0])^bin;
    assign b1=(~(a[0]^b[0]))&bin | (~a[0]&b[0]);
    assign d[1]=(a[1]^b[1])^b1;
    assign b2=(~(a[1]^b[1]))&b1 | (~a[1]&b[1]);
    assign d[2]=(a[2]^b[2])^b2;
    assign b3=(~(a[2]^b[2]))&b2 | (~a[2]&b[2]);
    assign d[3]=(a[2]^b[2])^b3;
    assign bout=(~(a[3]^b[3]))&b3 | (~a[3]&b[3]);
endmodule
