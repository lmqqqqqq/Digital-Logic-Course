`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 15:38:44
// Design Name: 
// Module Name: transmission8_tb
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


module transmission8_tb();
   reg[7:0]iData;
   reg A;
   reg B;
   reg C;
   wire [7:0]oData;
   initial
   begin
      iData=8'b00000000;
      A=0;
      B=0;
      C=0;
      #40 A=0;B=0;C=1;
      #40 A=0;B=1;C=0;
      #40 A=0;B=1;C=1;
      #40 A=1;B=0;C=0;
      #40 A=1;B=0;C=1;
      #40 A=1;B=1;C=0;
      #40 A=1;B=1;C=1;
      #40 A=0;B=0;C=0;
   end
   transmission8
   transmission8_inst(
      .iData(iData),
      .A(A),
      .B(B),
      .C(C),
      .oData(oData)
      );
      
endmodule
