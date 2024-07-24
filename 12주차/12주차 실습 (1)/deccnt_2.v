`timescale 1ns / 1ps

module deccnt_2(
    input clk, rst,
    output [3:0] out
    );
    reg [3:0] tmp, out;
    initial tmp = 4'b0000;
    initial out = 4'b0000;
    always @(posedge clk) begin
        if (rst == 1'b1 | tmp == 4'b1010) begin
            tmp = 4'b0000;
            out = 4'b0000;
        end
        else begin
            out[3] <= (tmp[3]|(tmp[2]&tmp[1])|(tmp[2]&tmp[0]));
            out[2] <= (tmp[3]|(tmp[2]&tmp[1])|(tmp[2]&~tmp[0]));
            out[1] <= (tmp[3]|(~tmp[2]&tmp[1])|(tmp[2]&~tmp[1]&tmp[0]));
            out[0] <= tmp[0];
        end
        tmp = tmp + 4'b0001;
    end            
endmodule
