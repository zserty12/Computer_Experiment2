`timescale 1ns / 1ps


module onebit(
    input a,b,
    output r1,r2,r3,r4
    );
    assign r1=~(a^b);
    assign r2=(a^b);
    assign r3=a&~b;
    assign r4=~a&b;
endmodule
