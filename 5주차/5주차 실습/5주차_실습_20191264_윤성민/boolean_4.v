`timescale 1ns / 1ps

module boolean_4(
    input a,b,c,
    output r1
    );
    assign r1=~((a|b)&c);
    
endmodule
