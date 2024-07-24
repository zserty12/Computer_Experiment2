`timescale 1ns / 1ps

module mux(
    input a,b,c,d,s0,s1,
    output y
    );
    assign y = (a & ~s0 & ~s1) | (b & s0 & ~s1) | (c & ~s0 & s1) | (d & s0 & s1);
endmodule
