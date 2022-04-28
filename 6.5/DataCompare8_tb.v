`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 14:50:14
// Design Name: 
// Module Name: DataCompare8_tb
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


module DataCompare8_tb();
   reg [7:0] iData_a;
   reg [7:0] iData_b;
   wire [2:0] oData;
   DataCompare8 uut(iData_a,iData_b,oData);
   initial
       begin
       iData_a=8'b10000000;
       iData_b=8'b01110000;
       #100;
   
       iData_a=8'b01110000;
       iData_b=8'b01100000;
       #100;
   
       iData_a=8'b00110000;
       iData_b=8'b00010000;
       #100;
   
       iData_a=8'b00010000;
       iData_b=8'b00000000;
       #100;    
   
       iData_a=8'b01110000;
       iData_b=8'b10000000;
       #100;
       
       iData_a=8'b01110000;
       iData_b=8'b01110000;
       #100;
       
       iData_a=8'b00000000;
       iData_b=8'b00010001;
       #100;
       
       iData_a=8'b00111100;
       iData_b=8'b00111100;
       #100;
                 
       end
endmodule
