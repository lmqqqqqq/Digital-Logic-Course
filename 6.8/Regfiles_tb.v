`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/24 20:34:16
// Design Name: 
// Module Name: Regfiles_tb
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


module Regfiles_tb();
reg clk;
reg rst;
reg we;
reg[4:0] raddr1;
reg[4:0] raddr2;
reg[4:0] waddr;
reg[31:0] wdata;
wire[31:0] rdata1;
wire[31:0] rdata2;

Regfiles uut(clk,rst,we,raddr1,raddr2,waddr,wdata,rdata1,rdata2);

initial
    clk<=0;
always
begin
    #10 clk=~clk;
end

always
begin
      
    rst=0;
    we=1;
    raddr1=5'd3;
    raddr2=5'd4;
    waddr=5'd5;
    wdata=32'd3;
    
#40 rst=0;
    we=0;
    raddr1=5'd5;
    raddr2=5'd4;
    waddr=5'd11;
    wdata=32'd10;

#40 rst=0;
    we=0;
    raddr1=5'd3;
    raddr2=5'd4;
    waddr=5'd7;
    wdata=32'h0;

#40 rst=0;
    we=0;
    raddr1=5'd3;
    raddr2=5'd4;
    waddr=5'd8;
    wdata=32'h0;
end
endmodule
