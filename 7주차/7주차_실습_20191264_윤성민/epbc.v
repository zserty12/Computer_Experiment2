`timescale 1ns / 1ps

module epbc(
    input a,b,c,d,epb,
    output pec
    );
    assign pec=a^b^c^d^epb;
endmodule
