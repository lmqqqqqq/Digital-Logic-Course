`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/23 14:27:41
// Design Name: 
// Module Name: logic_gates_1
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


module logic_gates_1(iA, iB, oAnd, oOr, oNot);
   input iA,iB;
   output oAnd,oOr,oNot;
   and and_inst(oAnd,iA,iB);
   or or_inst(oOr,iA,iB);
   not not_inst(oNot,iA);
endmodule
