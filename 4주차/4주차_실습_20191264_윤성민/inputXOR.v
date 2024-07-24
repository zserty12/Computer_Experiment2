`timescale 1ns / 1ps

module inputXOR(
    input a,b,c,d,
    output e,f,g
    );
    assign e=(a&~b)|(~a&b);
    assign f=(c&~e)|(~c&e);
    assign g=(d&~f)|(~d&f);
endmodule
