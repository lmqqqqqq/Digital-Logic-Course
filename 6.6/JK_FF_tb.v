`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 21:32:15
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb();
    reg CLK;
    reg J;
    reg K;
    reg RST_n;
    wire Q1;
    wire Q2;
JK_FF uut(CLK,J,K,RST_n,Q1,Q2);
always
begin
    #100 CLK=~CLK;
end

initial
    begin
    CLK=1;
    J=0;
    K=1;
    RST_n=1;
    #100;
    
    J=0;
    K=0;
    RST_n=1;
    #100;
    
    J=1;
    K=0;
    RST_n=1;
    #100;
    
    J=1;
    K=1;
    RST_n=1;
    #100;
    
    J=0;
    K=1;
    RST_n=0;
    #100;
    end
    
endmodule
