`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 10:24:56
// Design Name: 
// Module Name: selector41
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


module selector41(
    input [3:0] iC0,
    input [3:0] iC1,
    input [3:0] iC2,
    input [3:0] iC3,
    input iS1,
    input iS0,
    output [3:0] oZ
    );
    assign oZ[3]=iC0[3]&~iS1&~iS0|iC1[3]&~iS1&iS0|iC2[3]&iS1&~iS0|iC3[3]&iS1&iS0;
    assign oZ[2]=iC0[2]&~iS1&~iS0|iC1[2]&~iS1&iS0|iC2[2]&iS1&~iS0|iC3[2]&iS1&iS0;
    assign oZ[1]=iC0[1]&~iS1&~iS0|iC1[1]&~iS1&iS0|iC2[1]&iS1&~iS0|iC3[1]&iS1&iS0;
    assign oZ[0]=iC0[0]&~iS1&~iS0|iC1[0]&~iS1&iS0|iC2[0]&iS1&~iS0|iC3[0]&iS1&iS0;
    
endmodule
