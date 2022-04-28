`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 19:05:07
// Design Name: 
// Module Name: Counter8
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

module JK_FF(
    input CLK,
    input J,
    input K,
    input RST_n,
    output reg Q1
    //output reg Q2
    );
always @(posedge CLK or negedge RST_n)
    begin
    if(~RST_n)
        begin
            Q1<=1'b0;
            //Q2<=1'b1;
        end
    else
        begin
        if(J==0&&K==0)
            begin
            Q1<=Q1;
            //Q2<=Q2;
            end
        else if(J==0&&K==1)
            begin
            Q1<=0;
            //Q2<=1;
            end
        else if(J==1&&K==0)
            begin
            Q1<=1;
            //Q2<=0;
            end
        else
            begin
            Q1<=~Q1;
            //Q2<=~Q2;
            end               
        end
    end
endmodule

module display7(
    input [2:0] iData,
    output [6:0] oData
    );
    assign oData[6]=(~iData[2]&~iData[1]&~iData[0])|(~iData[2]&~iData[1]&iData[0])|(iData[2]&iData[1]&iData[0]);
    assign oData[5]=(~iData[2]&~iData[1]&iData[0])|(~iData[2]&iData[1]&~iData[0])|(~iData[2]&iData[1]&iData[0])|(iData[2]&iData[1]&iData[0]);
    assign oData[4]=(~iData[2]&~iData[1]&iData[0])|(~iData[2]&iData[1]&iData[0])|(iData[2]&~iData[1]&~iData[0])|(iData[2]&~iData[1]&iData[0])|(iData[2]&iData[1]&iData[0]);
    assign oData[3]=(~iData[2]&~iData[1]&iData[0])|(iData[2]&~iData[1]&~iData[0])|(iData[2]&iData[1]&iData[0]);
    assign oData[2]=~iData[2]&iData[1]&~iData[0];
    assign oData[1]=(iData[2]&~iData[1]&iData[0])|(iData[2]&iData[1]&~iData[0]);
    assign oData[0]=(~iData[2]&~iData[1]&iData[0])|(iData[2]&~iData[1]&~iData[0]); 
endmodule

module Divider(
    input I_CLK,
    input rst,
    output reg O_CLK=0
    );
    parameter times=100000000;
    reg [31:0] counter=32'b0;    
    always @(posedge I_CLK )
        if(rst)
            begin
            counter = 32'b0;
            O_CLK=1'b0;
            end
        else if(counter<times/2-1)
            begin
            counter = counter+1'b1;
            O_CLK=O_CLK;
            end
        else
            begin
            counter =32'b0;
            O_CLK=~O_CLK;
            end
endmodule

module Counter8(
    input CLK,
    input rst_n,
    output reg [2:0] oQ,
    output [6:0] oDisplay
    );
    wire [2:0] tmp;
    wire y;
    wire z;
and(y,tmp[0],tmp[1]);
Divider D1(CLK,~rst_n,z);
JK_FF F0(z,1,1,rst_n,tmp[0]);
JK_FF F1(z,tmp[0],tmp[0],rst_n,tmp[1]);
JK_FF F2(z,y,y,rst_n,tmp[2]);
display7 d1(oQ,oDisplay);

always @(*)
    oQ<=tmp;

endmodule
