`timescale 1ns / 1ps

module epbg(
    input a,b,c,d,
    output epb,opb
    );
    assign epb=a^b^c^d;
endmodule
