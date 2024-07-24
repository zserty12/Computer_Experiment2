`timescale 1ns / 1ps

module rsff_nor(
    input s,r,cp,
    output q, nq
    );
    assign q=~((r&cp)|nq);
    assign nq=~((s&cp)|q);
endmodule
