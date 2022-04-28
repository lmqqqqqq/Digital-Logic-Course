`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/24 18:08:47
// Design Name: 
// Module Name: Regfiles
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
module decoder
(
    input [4:0] iData,
    input  Ena,
    output [31:0] oData
);
assign oData[31]=~Ena|~iData[4]|~iData[3]|~iData[2]|~iData[1]|~iData[0];
assign oData[30]=~Ena|~iData[4]|~iData[3]|~iData[2]|~iData[1]|iData[0];
assign oData[29]=~Ena|~iData[4]|~iData[3]|~iData[2]|iData[1]|~iData[0];
assign oData[28]=~Ena|~iData[4]|~iData[3]|~iData[2]|iData[1]|iData[0];
assign oData[27]=~Ena|~iData[4]|~iData[3]|iData[2]|~iData[1]|~iData[0];
assign oData[26]=~Ena|~iData[4]|~iData[3]|iData[2]|~iData[1]|iData[0];
assign oData[25]=~Ena|~iData[4]|~iData[3]|iData[2]|iData[1]|~iData[0];
assign oData[24]=~Ena|~iData[4]|~iData[3]|iData[2]|iData[1]|iData[0];
assign oData[23]=~Ena|~iData[4]|iData[3]|~iData[2]|~iData[1]|~iData[0];
assign oData[22]=~Ena|~iData[4]|iData[3]|~iData[2]|~iData[1]|iData[0];
assign oData[21]=~Ena|~iData[4]|iData[3]|~iData[2]|iData[1]|~iData[0];
assign oData[20]=~Ena|~iData[4]|iData[3]|~iData[2]|iData[1]|iData[0];
assign oData[19]=~Ena|~iData[4]|iData[3]|iData[2]|~iData[1]|~iData[0];
assign oData[18]=~Ena|~iData[4]|iData[3]|iData[2]|~iData[1]|iData[0];
assign oData[17]=~Ena|~iData[4]|iData[3]|iData[2]|iData[1]|~iData[0];
assign oData[16]=~Ena|~iData[4]|iData[3]|iData[2]|iData[1]|iData[0];
assign oData[15]=~Ena|iData[4]|~iData[3]|~iData[2]|~iData[1]|~iData[0];
assign oData[14]=~Ena|iData[4]|~iData[3]|~iData[2]|~iData[1]|iData[0];
assign oData[13]=~Ena|iData[4]|~iData[3]|~iData[2]|iData[1]|~iData[0];
assign oData[12]=~Ena|iData[4]|~iData[3]|~iData[2]|iData[1]|iData[0];
assign oData[11]=~Ena|iData[4]|~iData[3]|iData[2]|~iData[1]|~iData[0];
assign oData[10]=~Ena|iData[4]|~iData[3]|iData[2]|~iData[1]|iData[0];
assign oData[9]=~Ena|iData[4]|~iData[3]|iData[2]|iData[1]|~iData[0];
assign oData[8]=~Ena|iData[4]|~iData[3]|iData[2]|iData[1]|iData[0];
assign oData[7]=~Ena|iData[4]|iData[3]|~iData[2]|~iData[1]|~iData[0];
assign oData[6]=~Ena|iData[4]|iData[3]|~iData[2]|~iData[1]|iData[0];
assign oData[5]=~Ena|iData[4]|iData[3]|~iData[2]|iData[1]|~iData[0];
assign oData[4]=~Ena|iData[4]|iData[3]|~iData[2]|iData[1]|iData[0];
assign oData[3]=~Ena|iData[4]|iData[3]|iData[2]|~iData[1]|~iData[0];
assign oData[2]=~Ena|iData[4]|iData[3]|iData[2]|~iData[1]|iData[0];
assign oData[1]=~Ena|iData[4]|iData[3]|iData[2]|iData[1]|~iData[0];
assign oData[0]=~Ena|iData[4]|iData[3]|iData[2]|iData[1]|iData[0];
endmodule

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

module selector32_1(
input [31:0] iC0,
input [31:0] iC1,
input [31:0] iC2,
input [31:0] iC3,
input [31:0] iC4,
input [31:0] iC5,
input [31:0] iC6,
input [31:0] iC7,
input [31:0] iC8,
input [31:0] iC9,
input [31:0] iC10,
input [31:0] iC11,
input [31:0] iC12,
input [31:0] iC13,
input [31:0] iC14,
input [31:0] iC15,
input [31:0] iC16,
input [31:0] iC17,
input [31:0] iC18,
input [31:0] iC19,
input [31:0] iC20,
input [31:0] iC21,
input [31:0] iC22,
input [31:0] iC23,
input [31:0] iC24,
input [31:0] iC25,
input [31:0] iC26,
input [31:0] iC27,
input [31:0] iC28,
input [31:0] iC29,
input [31:0] iC30,
input [31:0] iC31,
input ena,
input [4:0]iS,
output [31:0] oZ
);
assign oZ=(ena==0?32'bz:(iS==5'd0)?iC0:
          (iS==5'd1)?iC1:
          (iS==5'd2)?iC2:
          (iS==5'd3)?iC3:
          (iS==5'd4)?iC4:
          (iS==5'd5)?iC5:
          (iS==5'd6)?iC6:
          (iS==5'd7)?iC7:
          (iS==5'd8)?iC8:         
          (iS==5'd9)?iC9:
          (iS==5'd10)?iC10:
          (iS==5'd11)?iC11:
          (iS==5'd12)?iC12:
          (iS==5'd13)?iC13:
          (iS==5'd14)?iC14:
          (iS==5'd15)?iC15:
          (iS==5'd16)?iC16: 
          (iS==5'd17)?iC17:
          (iS==5'd18)?iC18:
          (iS==5'd19)?iC19:
          (iS==5'd20)?iC20:
          (iS==5'd21)?iC21:
          (iS==5'd22)?iC22:
          (iS==5'd23)?iC23:
          (iS==5'd24)?iC24: 
          (iS==5'd25)?iC25:
          (iS==5'd26)?iC26:
          (iS==5'd27)?iC27:
          (iS==5'd28)?iC28:
          (iS==5'd29)?iC29:
          (iS==5'd30)?iC30:iC31
          );
endmodule

module Regfiles(
    input clk,
    input rst,
    input we,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output [31:0] rdata1,
    output [31:0] rdata2
    );
wire [31:0] register_ena;//存译码出来的有效信号
wire [31:0] temp[31:0];//暂存出寄存器后的结果
    
decoder d1(waddr,we,register_ena);
pcreg p0(~clk,rst,~register_ena[0],wdata,temp[0]);
pcreg p1(~clk,rst,~register_ena[1],wdata,temp[1]);
pcreg p2(~clk,rst,~register_ena[2],wdata,temp[2]);
pcreg p3(~clk,rst,~register_ena[3],wdata,temp[3]);
pcreg p4(~clk,rst,~register_ena[4],wdata,temp[4]);
pcreg p5(~clk,rst,~register_ena[5],wdata,temp[5]);
pcreg p6(~clk,rst,~register_ena[6],wdata,temp[6]);
pcreg p7(~clk,rst,~register_ena[7],wdata,temp[7]);
pcreg p8(~clk,rst,~register_ena[8],wdata,temp[8]);
pcreg p9(~clk,rst,~register_ena[9],wdata,temp[9]);
pcreg p10(~clk,rst,~register_ena[10],wdata,temp[10]);
pcreg p11(~clk,rst,~register_ena[11],wdata,temp[11]);
pcreg p12(~clk,rst,~register_ena[12],wdata,temp[12]);
pcreg p13(~clk,rst,~register_ena[13],wdata,temp[13]);
pcreg p14(~clk,rst,~register_ena[14],wdata,temp[14]);
pcreg p15(~clk,rst,~register_ena[15],wdata,temp[15]);
pcreg p16(~clk,rst,~register_ena[16],wdata,temp[16]);
pcreg p17(~clk,rst,~register_ena[17],wdata,temp[17]);
pcreg p18(~clk,rst,~register_ena[18],wdata,temp[18]);
pcreg p19(~clk,rst,~register_ena[19],wdata,temp[19]);
pcreg p20(~clk,rst,~register_ena[20],wdata,temp[20]);
pcreg p21(~clk,rst,~register_ena[21],wdata,temp[21]);
pcreg p22(~clk,rst,~register_ena[22],wdata,temp[22]);
pcreg p23(~clk,rst,~register_ena[23],wdata,temp[23]);
pcreg p24(~clk,rst,~register_ena[24],wdata,temp[24]);
pcreg p25(~clk,rst,~register_ena[25],wdata,temp[25]);
pcreg p26(~clk,rst,~register_ena[26],wdata,temp[26]);
pcreg p27(~clk,rst,~register_ena[27],wdata,temp[27]);
pcreg p28(~clk,rst,~register_ena[28],wdata,temp[28]);
pcreg p29(~clk,rst,~register_ena[29],wdata,temp[29]);
pcreg p30(~clk,rst,~register_ena[30],wdata,temp[30]);
pcreg p31(~clk,rst,~register_ena[31],wdata,temp[31]);
 
selector32_1 s1(temp[0],temp[1],temp[2],temp[3],temp[4],temp[5],temp[6],temp[7],
                     temp[8],temp[9],temp[10],temp[11],temp[12],temp[13],temp[14],temp[15],
                     temp[16],temp[17],temp[18],temp[19],temp[20],temp[21],temp[22],temp[23],
                     temp[24],temp[25],temp[26],temp[27],temp[28],temp[29],temp[30],temp[31],~we,raddr1,rdata1);
                        
selector32_1 s2(temp[0],temp[1],temp[2],temp[3],temp[4],temp[5],temp[6],temp[7],
                      temp[8],temp[9],temp[10],temp[11],temp[12],temp[13],temp[14],temp[15],
                      temp[16],temp[17],temp[18],temp[19],temp[20],temp[21],temp[22],temp[23],
                      temp[24],temp[25],temp[26],temp[27],temp[28],temp[29],temp[30],temp[31],~we,raddr2,rdata2);                                            
endmodule
