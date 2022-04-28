`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 23:26:24
// Design Name: 
// Module Name: Divider_tb
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


module Divider_tb();
reg I_CLK;
reg rst;
wire O_CLK;

Divider #(6)uut(I_CLK,rst,O_CLK);
always
begin
	# 10 I_CLK = ~I_CLK;
end

initial
    begin
    I_CLK=0;
    end
    
initial
    begin
    rst=1;
    #20 rst=0;
    end
    
endmodule
