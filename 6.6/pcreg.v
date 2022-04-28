`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 22:52:57
// Design Name: 
// Module Name: pcreg
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

module Asynchronous_D_FF_Ena
(
    input CLK,
    input D,
    input RST_n,
    input iEna,
    output reg Q1
);
always@(posedge RST_n or posedge CLK)
    if(RST_n==1)
        begin
        Q1<=0;
        end
    else 
        if(iEna==1)
        begin
        Q1<=D;
        end
endmodule



module pcreg(
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    output wire [31:0] data_out
    );
Asynchronous_D_FF_Ena a0(clk,data_in[0],rst,ena,data_out[0]);
Asynchronous_D_FF_Ena a1(clk,data_in[1],rst,ena,data_out[1]);
Asynchronous_D_FF_Ena a2(clk,data_in[2],rst,ena,data_out[2]);
Asynchronous_D_FF_Ena a3(clk,data_in[3],rst,ena,data_out[3]);
Asynchronous_D_FF_Ena a4(clk,data_in[4],rst,ena,data_out[4]);
Asynchronous_D_FF_Ena a5(clk,data_in[5],rst,ena,data_out[5]);
Asynchronous_D_FF_Ena a6(clk,data_in[6],rst,ena,data_out[6]);
Asynchronous_D_FF_Ena a7(clk,data_in[7],rst,ena,data_out[7]);
Asynchronous_D_FF_Ena a8(clk,data_in[8],rst,ena,data_out[8]);
Asynchronous_D_FF_Ena a9(clk,data_in[9],rst,ena,data_out[9]);
Asynchronous_D_FF_Ena a10(clk,data_in[10],rst,ena,data_out[10]);
Asynchronous_D_FF_Ena a11(clk,data_in[11],rst,ena,data_out[11]);
Asynchronous_D_FF_Ena a12(clk,data_in[12],rst,ena,data_out[12]);
Asynchronous_D_FF_Ena a13(clk,data_in[13],rst,ena,data_out[13]);
Asynchronous_D_FF_Ena a14(clk,data_in[14],rst,ena,data_out[14]);
Asynchronous_D_FF_Ena a15(clk,data_in[15],rst,ena,data_out[15]);
Asynchronous_D_FF_Ena a16(clk,data_in[16],rst,ena,data_out[16]);
Asynchronous_D_FF_Ena a17(clk,data_in[17],rst,ena,data_out[17]);
Asynchronous_D_FF_Ena a18(clk,data_in[18],rst,ena,data_out[18]);
Asynchronous_D_FF_Ena a19(clk,data_in[19],rst,ena,data_out[19]);
Asynchronous_D_FF_Ena a20(clk,data_in[20],rst,ena,data_out[20]);
Asynchronous_D_FF_Ena a21(clk,data_in[21],rst,ena,data_out[21]);
Asynchronous_D_FF_Ena a22(clk,data_in[22],rst,ena,data_out[22]);
Asynchronous_D_FF_Ena a23(clk,data_in[23],rst,ena,data_out[23]);
Asynchronous_D_FF_Ena a24(clk,data_in[24],rst,ena,data_out[24]);
Asynchronous_D_FF_Ena a25(clk,data_in[25],rst,ena,data_out[25]);
Asynchronous_D_FF_Ena a26(clk,data_in[26],rst,ena,data_out[26]);
Asynchronous_D_FF_Ena a27(clk,data_in[27],rst,ena,data_out[27]);
Asynchronous_D_FF_Ena a28(clk,data_in[28],rst,ena,data_out[28]);
Asynchronous_D_FF_Ena a29(clk,data_in[29],rst,ena,data_out[29]);
Asynchronous_D_FF_Ena a30(clk,data_in[30],rst,ena,data_out[30]);
Asynchronous_D_FF_Ena a31(clk,data_in[31],rst,ena,data_out[31]);
  
endmodule
