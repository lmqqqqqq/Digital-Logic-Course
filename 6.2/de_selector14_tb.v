`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 14:14:07
// Design Name: 
// Module Name: de_selector14_tb
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


module de_selector14_tb();
   reg iC;
   reg iS1;
   reg iS0;
   wire oZ0;
   wire oZ1;
   wire oZ2;
   wire oZ3;
   initial
   begin
      iC=0;
      iS0=0;
      iS1=0;
      #40 iS0=1;iS1=0;
      #40 iS0=0;iS1=1;
      #40 iS0=1;iS1=1;
      #40 iS0=0;iS1=0;
   end
   de_selector14
   de_selector14_inst(
      .iC(iC),
      .iS1(iS1),
      .iS0(iS0),
      .oZ0(oZ0),
      .oZ1(oZ1),
      .oZ2(oZ2),
      .oZ3(oZ3)
      );
endmodule
