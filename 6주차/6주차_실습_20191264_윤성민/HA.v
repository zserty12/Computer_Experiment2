`timescale 1ns / 1ps

module HA(
    input a,b,
    output s,c
    );
    assign s=a^b;
    assign c=a&b;
endmodule
