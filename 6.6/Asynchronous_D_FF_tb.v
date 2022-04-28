`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 21:03:34
// Design Name: 
// Module Name: Asynchronous_D_FF_tb
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


module Asynchronous_D_FF_tb();
   reg CLK;
   reg D;
   reg RST_n;
   wire Q1;
   wire Q2;

Asynchronous_D_FF uut(CLK,D,RST_n,Q1,Q2);
always
begin
   # 100 CLK = ~CLK;
end

initial
   begin
   CLK=1;
   D=1;
   RST_n=1;
   #100;
   
   D=0;
   RST_n=0;
   #100;
   
   D=1;
   RST_n=1;
   #100;
   
   D=1;
   RST_n=1;
   #100;
   end

endmodule
