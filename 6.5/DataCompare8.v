`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 10:55:26
// Design Name: 
// Module Name: DataCompare8
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

module DataCompare4
(
    input [3:0] iData_a,
    input [3:0] iData_b,
    input [2:0] iData,
    output reg [2:0] oData
);
always @(iData_a or iData_b or iData)
    begin
    if(iData_a>iData_b)
        oData=3'b100;
    else if(iData_a<iData_b)
        oData=3'b010;
    else
        begin
        if(iData==3'b100)
            oData=3'b100;
        else if(iData==3'b010)
            oData=3'b010;  
        else 
            oData=3'b001;        
        end
    end
endmodule

module DataCompare8(
    input [7:0] iData_a,
    input [7:0] iData_b,
    output [2:0] oData
    );
    wire[2:0] iData=3'b001;
    wire[2:0] oData1;
    DataCompare4 d1(iData_a[3:0],iData_b[3:0],iData,oData1);
    DataCompare4 d2(iData_a[7:4],iData_b[7:4],oData1,oData); 
endmodule
