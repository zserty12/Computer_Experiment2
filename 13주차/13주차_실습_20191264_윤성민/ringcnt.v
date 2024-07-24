`timescale 1ns / 1ps

module ringcnt(
    input clk, rst,
    output reg [3:0] out
    );
    initial out = 4'b1000;
    always @(posedge clk) begin
        if (rst==1'b1) begin
            out[3] <= 1'b1;
            out[2] <= 1'b0;
            out[1] <= 1'b0;
            out[0] <= 1'b0;
        end
        else begin
            out[3] <= out[0];
            out[2] <= out[3];
            out[1] <= out[2];
            out[0] <= out[1];
        end
    end
endmodule
