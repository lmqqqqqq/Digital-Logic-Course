`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 20:09:59
// Design Name: 
// Module Name: Counter8_tb
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


module Counter8_tb();
reg CLK;
reg rst_n;
wire[2:0] oQ;
wire[6:0] oDisplay;

Counter8 uut(CLK,rst_n,oQ,oDisplay);
always
begin
	# 100 CLK = ~CLK;
end

initial
    begin
    CLK=1;
    rst_n=1;
    #100;
    
    rst_n=0;
    #100;
    
    rst_n=1;
    #100;
    
    rst_n=1;
    #100;
    
    rst_n=1;
    #100;
    
    end

endmodule

