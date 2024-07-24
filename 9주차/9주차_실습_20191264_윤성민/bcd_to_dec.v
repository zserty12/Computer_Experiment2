`timescale 1ns / 1ps

module bcd_to_dec(
    input w,x,y,z,
    output a,b,c,d,e,f,g,h,i
    );
    assign a=~w & ~x & ~y & z; 
    assign b=~w & ~x & y & ~z; 
    assign c=~w & ~x & y & z; 
    assign d=~w & x & ~y & ~z; 
    assign e=~w & x & ~y & z; 
    assign f=~w & x & y & ~z; 
    assign g=~w & x & y & z; 
    assign h=w& ~x & ~y & ~z; 
    assign i=w& ~x & ~y & z; 
endmodule
