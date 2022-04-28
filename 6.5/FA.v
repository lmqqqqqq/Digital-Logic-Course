`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 16:42:42
// Design Name: 
// Module Name: FA
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
