`timescale 1ns / 1ps

module HS(
    input a,b,
    output bor, D
    );
    assign bor=~a&b;
    assign D=a^b;
endmodule
