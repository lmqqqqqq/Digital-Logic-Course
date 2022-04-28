`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 19:13:21
// Design Name: 
// Module Name: DataCompare4
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

