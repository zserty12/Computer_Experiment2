`timescale 1ns / 1ps

module sevenseg(
    input w,x,y,z,
    output a,b,c,d,e,f,g,dp,digit
    );
    assign a=(~x&~z)|(~w&y)|(x&y)|(w&~z)|(w&~x&~y)|(~w&x&z);
    assign b=(~w&~x)|(~x&~z)|(~w&~y&~z)|(~w&y&z)|(w&~y&z);
    assign c=(~w&x)|(w&~x)|(~y&z)|(~w&~y)|(~w&z);
    assign d=(~w&~x&~z)|(w&~y&~z)|(x&~y&z)|(~x&y&z)|(x&y&~z);
    assign e=(w&x)|(y&~z)|(~x&~z)|(w&y);
    assign f=(w&~x)|(~y&~z)|(x&~z)|(w&y)|(~w&x&~y);
    assign g=(w&~x)|(y&~z)|(~x&y)|(w&z)|(~w&x&~y);
    assign dp=1;
    assign digit=a|b|c|d|e|f|g|dp;
endmodule
