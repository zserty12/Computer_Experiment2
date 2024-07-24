`timescale 1ns / 1ps

module dff(
    input d,cp,
    output q,nq
    );
    assign q=~((~d&cp)|nq);
    assign nq=~((d&cp)|q);
endmodule
