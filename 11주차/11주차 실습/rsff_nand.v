`timescale 1ns / 1ps

module rsff_nand(
    input s,r,cp,
    output q,nq
    );
    assign q=~((~(s&cp))&nq);
    assign nq=~((~(r&cp))&q);
endmodule
