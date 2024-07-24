`timescale 1ns / 1ps

module FS(
    input a,b,b_in,
    output b_out,D
    );
    assign b_out=(~(a^b)&b_in)|(~a&b);
    assign D=a^b^b_in;
endmodule
