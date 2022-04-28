`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 17:54:50
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb();
    reg[7:0] iData_a;
    reg[7:0] iData_b;
    reg iC;
    wire[7:0] oData;
    wire oData_C;
    
Adder uut(iData_a,iData_b,iC,oData,oData_C);
initial
    begin
    iData_a=8'b00000000;
    iData_b=8'b00000001;
    iC=1;
    #100;
    
    iData_a=8'b11000000;
    iData_b=8'b11000001;
    iC=1;
    #100;
    
    iData_a=8'b11111111;
    iData_b=8'b11111111;
    iC=1;
    #100;
    
    iData_a=8'b11111100;
    iData_b=8'b11111100;
    iC=0;
    #100;
    
    iData_a=8'b01001111;
    iData_b=8'b11111010;
    iC=1;
    #100;
    end
    
endmodule
