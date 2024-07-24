`timescale 1ns / 1ps

module bcdadd(
    input a3,a2,a1,a0,b3,b2,b1,b0,cin,
    output s3,s2,s1,s0,c1,c2,c3,K,cout,S3,S2,S1,S0,c4,c5,c6,Cout
    );
    assign s0=(a0^b0)^cin;
    assign c1=(cin&(a0^b0)) | (a0&b0);
    assign s1=(a1^b1)^c1;
    assign c2=(c1&(a1^b1)) | (a1&b1);
    assign s2=(a2^b2)^c2;
    assign c3=(c2&(a2^b2)) | (a2&b2);
    assign s3=a3^b3^c3;
    assign K=(c3&(a3^b3)) | (a3&b3);
    assign cout=K|(s3&s2)|(s3&s1);
    
    assign S0=0^s1^0;
    assign c4=(0&(s1^0))|(0&s1);
    assign S1=cout^s2^c4;
    assign c5=(c4&(s2^cout))|(s2&cout);
    assign S2=cout^s3^c5;
    assign c6=(c5&(s3^cout))|(s3&cout);
    assign S3=0^s3^0;
    assign Cout=(c6&(s3^0))|(0&s3);
endmodule
