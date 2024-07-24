`timescale 1ns / 1ps

module updowncnt(
    input clk, rst, ud,
    output reg [3:0] out,
    output reg [6:0] seg,
    output dp, digit
    );
    initial out = 4'b0000;
    initial seg = 7'b0000000;
    always @(posedge clk) begin 
        if (rst==1'b1) 
            out = 4'b0000;
        else begin
            if (ud==1'b1) begin
               out = out + 1;
                seg[0] <= 1'b0;
                seg[1] <= 1'b1;
                seg[2] <= 1'b1;
                seg[3] <= 1'b1;
                seg[4] <= 1'b1;
                seg[5] <= 1'b1;
                seg[6] <= 1'b0;
            end
            else begin
                out = out - 1;
                seg[0] <= 1'b0;
                seg[1] <= 1'b1;
                seg[2] <= 1'b1;
                seg[3] <= 1'b1;
                seg[4] <= 1'b1;
                seg[5] <= 1'b0;
                seg[6] <= 1'b1;
            end
        end
    end
    assign dp = 1;
    assign digit = seg[6] | seg[5] | seg[4] | seg[3] | seg[2] | seg[1] | seg[0];
endmodule
