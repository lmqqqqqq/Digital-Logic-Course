`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 20:16:12
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
  reg[2:0]iData;
  reg[1:0]iEna;
  wire[7:0]oData;
  initial
  begin
     iEna=2'b10;iData=3'b000;
     #40 iData=3'b001;
     #40 iData=3'b010;
     #40 iData=3'b011;
     #40 iData=3'b100;
     #40 iData=3'b101;
     #40 iData=3'b110;
     #40 iData=3'b111;
     #40 iEna=2'bx1;iData=3'bxxx;
     #40 iEna=2'b0x;iData=3'bxxx;
     #40 iEna=2'b10;iData=3'b000;             
  end
  decoder
  decoder_inst(
     .iData(iData),
     .iEna(iEna),
     .oData(oData)
     );
endmodule
