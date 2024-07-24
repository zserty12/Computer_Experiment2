`timescale 1ns / 1ps

module bcdadd(
    input [3:0] a, b,
    input cin,
    output [3:0] S,
    output Cout
    );
    wire c1,c2,c3,K,cout,c0,c4,c5,c6;
    wire [3:0] s;
    
    assign s[0]=(a[0]^b[0])^cin;
    assign c1=(cin&(a[0]^b[0])) | (a[0]&b[0]);
    assign s[1]=(a[1]^b[1])^c1;
    assign c2=(c1&(a[1]^b[1])) | (a[1]&b[1]);
    assign s[2]=(a[2]^b[2])^c2;
    assign c3=(c2&(a[2]^b[2])) | (a[2]&b[2]);
    assign s[3]=a[3]^b[3]^c3;
    assign K=(c3&(a[3]^b[3])) | (a[3]&b[3]);
    assign cout=K|(s[3]&s[2])|(s[3]&s[1]);
    assign c0 = 1'b0;
    assign S[0]=1'b0^s[0]^c0;
    assign c4=(c0&(s[0]^1'b0))|(1'b0&s[0]);
    assign S[1]=cout^s[1]^c4;
    assign c5=(c4&(s[1]^cout))|(s[1]&cout);
    assign S[2]=cout^s[2]^c5;
    assign c6=(c5&(s[2]^cout))|(s[2]&cout);
    assign S[3]=1'b0^s[3]^c6;
    assign Cout=(c6&(s[3]^1'b0))|(1'b0&s[3]);
endmodule
