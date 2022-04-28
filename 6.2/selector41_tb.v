`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 10:45:34
// Design Name: 
// Module Name: selector41_tb
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


module selector41_tb();
  reg[3:0]iC0;
  reg[3:0]iC1;
  reg[3:0]iC2;
  reg[3:0]iC3;
  wire[3:0]oZ;
  reg iS0;
  reg iS1;
  initial
  begin
    iC0=4'b0001;
    iC1=4'b0010;
    iC2=4'b0100;
    iC3=4'b1000;
    iS0=0;
    iS1=0;
    #40 iS0=1;iS1=0;
    #40 iS0=0;iS1=1;
    #40 iS0=1;iS1=1;
    #40 iS0=0;iS1=0;
  end
  selector41
  selector41_inst(
     .iC0(iC0),
     .iC1(iC1),
     .iC2(iC2),
     .iC3(iC3),  
     .iS0(iS0),
     .iS1(iS1),
     .oZ(oZ)
     );
endmodule
