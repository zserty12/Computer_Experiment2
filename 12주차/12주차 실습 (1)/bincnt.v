`timescale 1ns / 1ps

module bincnt(
    input clk, rst,
    output reg [1:0] out
    );
    always @(posedge clk) 
    begin
        if (rst == 1'b1)
            out <= 0;
        else 
            out <= out+1;
     end
endmodule
