`timescale 1ns / 1ps

module demux(
    input f,a,b,
    output w,x,y,z
    );
    assign w=~a&~b&f;
    assign x=~a&b&f;
    assign y=a&~b&f;
    assign z=a&b&f;
endmodule
