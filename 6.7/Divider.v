`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 20:38:31
// Design Name: 
// Module Name: Divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module Divider(
    input I_CLK,
    input rst,
    output reg O_CLK=0
    );
    parameter times=20;
    reg [31:0] counter=32'b0;    
    always @(posedge I_CLK )
        if(rst)
            begin
            counter = 32'b0;
            O_CLK=1'b0;
            end
        else if(counter<times/2-1)
            begin
            counter = counter+1'b1;
            O_CLK=O_CLK;
            end
        else
            begin
            counter =32'b0;
            O_CLK=~O_CLK;
            end
endmodule
