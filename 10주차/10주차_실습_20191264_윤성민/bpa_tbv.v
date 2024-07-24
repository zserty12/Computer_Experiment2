`timescale 1ns / 1ps

module bpa_tbv;
reg [3:0] a, b;
reg c_in;
wire [3:0] s;
wire c_out;

bpa u_bpa (
.a(a), .b(b),
.c_in(c_in),
.s(s),
.c_out(c_out) );

initial begin 
    a = 4'D0;
    b = 4'D0;
    c_in = 1'b0;
 end
 always @(a or b or c_in) begin
    a <= #10 a + 4'b01;
    b <= #20 b - 4'b01;
    c_in <= #30 ~c_in;
end
initial begin 
    #800
    $finish;
end
endmodule
