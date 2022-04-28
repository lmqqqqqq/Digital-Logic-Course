`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/20 20:05:31
// Design Name: 
// Module Name: barrelshifter32_tb
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


module barrelshifter32_tb();
   reg[31:0] a;
   reg[4:0] b;
   reg[1:0] aluc;
   wire[31:0] c;
   initial
   begin
      aluc=2'b00;a=32'b10000000_00000000_00000000_00000000;
      #40 b=5'b00001;
      #40 b=5'b11111;
 
      #40aluc=2'b10;a=32'b10000000_00000000_00000000_00000000;
      #40 b=5'b00001;
      #40 b=5'b11111;
   
      #40aluc=2'b01;a=32'b00000000_00000000_00000000_00000001;
      #40 b=5'b00001;
      #40 b=5'b11111;
   
      #40aluc=2'b11;a=32'b00000000_00000000_00000000_00000001;
      #40 b=5'b00001;
      #40 b=5'b11111;
   end
   barrelshifter32
   barrelshifter32_inst(
      .a(a),
      .b(b),
      .aluc(aluc),
      .c(c)
      ); 
endmodule
