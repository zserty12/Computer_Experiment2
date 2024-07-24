`timescale 1ns / 1ps

module deccnt(
    input clk, rst,
    output reg [3:0] out
    );
    initial out = 4'b0000;
    always @(posedge clk) begin
        if (rst == 1'b1)
            out = 4'b0000;
        else if (out == 4'b1001)
            out = 4'b0000;
        else out = out + 1;
    end
endmodule
