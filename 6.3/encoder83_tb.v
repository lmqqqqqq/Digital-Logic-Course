`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/10 21:56:55
// Design Name: 
// Module Name: encoder83_tb
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


module encoder83_tb();
  reg [7:0] iData;
  wire[2:0] oData; 
  initial
  begin
     iData=8'b10000000;
     #40 iData=8'b01000000;
     #40 iData=8'b00100000;
     #40 iData=8'b00010000;
     #40 iData=8'b00001000;
     #40 iData=8'b00000100;
     #40 iData=8'b00000010;
     #40 iData=8'b00000001;
     #40 iData=8'b10000000;
  end
  encoder83
  encoder83_inst(
     .iData(iData),
     .oData(oData)
     );
endmodule
