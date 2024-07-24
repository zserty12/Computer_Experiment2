`timescale 1ns / 1ps

module enco(
    input d0,d1,d2,d3,
    output e0,e1
    );
    assign e0=d3|d2;
    assign e1=d3|d1;
endmodule
