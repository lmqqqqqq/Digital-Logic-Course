`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 19:32:32
// Design Name: 
// Module Name: DataCompare4_tb
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


module DataCompare4_tb;
    reg [3:0] iData_a;
    reg [3:0] iData_b;
    reg [2:0] iData;
    wire [2:0] oData;
    
DataCompare4 uut(iData_a,iData_b,iData,oData);
initial
    begin
    iData_a=4'b1000;
    iData_b=4'b0111;
    iData=3'b001;
    #100;

    iData_a=4'b0111;
    iData_b=4'b0110;
    iData=3'b001;
    #100;

    iData_a=4'b0011;
    iData_b=4'b0001;
    iData=3'b001;
    #100;

    iData_a=4'b0001;
    iData_b=4'b0000;
    iData=3'b001;
    #100;    

    iData_a=4'b0111;
    iData_b=4'b1000;
    iData=3'b001;
    #100;
    
    iData_a=4'b0111;
    iData_b=4'b0111;
    iData=3'b001;
    #100;
    
    iData_a=4'b0000;
    iData_b=4'b0001;
    iData=3'b001;
    #100;
    
    iData_a=4'b0001;
    iData_b=4'b0011;
    iData=3'b001;
    #100;
    
    iData_a=4'ha;
    iData_b=4'ha;
    iData=3'b001;
    #100;
        
    end
endmodule

