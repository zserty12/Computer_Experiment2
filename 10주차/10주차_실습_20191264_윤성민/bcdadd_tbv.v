`timescale 1ns / 1ps

module bcdadd_tbv;
reg [3:0] a, b;
reg cin;
wire [3:0] S;
wire Cout;

bcdadd u_bcdadd (
.a(a), .b(b),
.cin(cin),
.S(S),
.Cout(Cout) );

initial begin 
    a = 4'b0000;
    b = 4'b0000;
    cin = 1'b0;
 end
 always @(a or b) begin
    a <= #30 a + 4'b0001;
    b <= #20 b - 4'b0001;
    cin <= #40 ~cin;
end
initial begin 
    #800
    $finish;
end
endmodule
