`timescale 1ns / 1ps

module shiftreg(
    input clk, in, rst,
    output reg [3:0] out
    );
    initial out = 4'b1000;
    always @(posedge clk) begin
    if (rst==1'b1) 
        out <= 4'b0000;
    else begin
        out[3] <= in;
        out[2] <= out[3];
        out[1] <= out[2];
        out[0] <= out[1];
    end
end
endmodule
