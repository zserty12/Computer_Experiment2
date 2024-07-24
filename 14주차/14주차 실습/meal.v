`timescale 1ns / 1ps

module meal(
    input clk, rst, x,
    output reg z,
    output reg [4:0] seq
    );
    reg [4:0] target = 5'b10101;
    initial seq = 4'b00000;
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            seq = 5'b00000;
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
