`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 17:34:14
// Design Name: 
// Module Name: Adder
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

module FA(
    input iA,
    input iB,
    input iC,
    output oS,
    output oC
    );
    wire tmp1;
    xor n1(tmp1,iA,iB);
    xor n2(oS,iC,tmp1);
    wire tmp2;
    wire tmp3;
    and a1(tmp2,iA,iB);
    and a2(tmp3,tmp1,iC);
    or o1(oC,tmp2,tmp3);
    
endmodule


module Adder(
    input [7:0] iData_a,
    input [7:0] iData_b,
    input iC,
    output [7:0] oData,
    output oData_C
    );
    wire tmp0;
    FA f0(iData_a[0],iData_b[0],iC,oData[0],tmp0);
    wire tmp1;
    FA f1(iData_a[1],iData_b[1],tmp0,oData[1],tmp1);
    wire tmp2;
    FA f2(iData_a[2],iData_b[2],tmp1,oData[2],tmp2);
    wire tmp3;
    FA f3(iData_a[3],iData_b[3],tmp2,oData[3],tmp3);
    wire tmp4;
    FA f4(iData_a[4],iData_b[4],tmp3,oData[4],tmp4);
    wire tmp5;
    FA f5(iData_a[5],iData_b[5],tmp4,oData[5],tmp5);
    wire tmp6;
    FA f6(iData_a[6],iData_b[6],tmp5,oData[6],tmp6);
    wire tmp7;
    FA f7(iData_a[7],iData_b[7],tmp6,oData[7],oData_C);
    
endmodule
