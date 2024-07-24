`timescale 1ns / 1ps

module convt(
    input a,b,c,d,
    output x,y,z,w
    );
    assign w = a|(b&c)|(b&d);
    assign x = a|(b&c)|(b&~d);
    assign y = a|(~b&c)|(b&~c&d);
    assign z = d;
endmodule
