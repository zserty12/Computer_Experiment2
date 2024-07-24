`timescale 1ns / 1ps

module meal(
    input clk, rst, x,
    output reg z,
    output reg [3:0] seq
    );
    reg [3:0] target = 4'b1101;
    initial seq = 4'b0000;
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            seq = 4'b0000;
            z = 1'b0;
        end
        else begin
            seq = seq << 1;
            seq[0] = x;
        end
        if (seq == target) z = 1'b1;
        else z = 1'b0;
    end
endmodule
