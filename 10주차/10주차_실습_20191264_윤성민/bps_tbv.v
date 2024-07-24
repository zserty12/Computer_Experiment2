`timescale 1ns / 1ps

module bps_tbv;
reg [3:0] a, b;
reg bin;
wire [3:0] d;
wire bout;

bps u_bps (
.a(a), .b(b),
.bin(bin),
.d(d),
.bout(bout) );

initial begin 
    a = 4'D0;
    b = 4'D0;
    bin = 1'b0;
 end
 always @(a or b) begin
    a <= #10 a + 4'b01;
    b <= #20 b - 4'b01;
    bin <= #30 ~bin;
end
initial begin 
    #800
    $finish;
end
endmodule
