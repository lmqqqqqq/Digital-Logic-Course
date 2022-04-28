`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 16:54:57
// Design Name: 
// Module Name: FA_tb
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


module FA_tb();
    reg iA;
    reg iB;
    reg iC;
    wire oS;
    wire oC;
FA uut(iA,iB,iC,oS,oC);
initial
    begin
    iA=0;
    iB=0;
    iC=0;
    #100;
    
    iA=0;
    iB=0;
    iC=1;
    #100;
     
    iA=0;
    iB=1;
    iC=0;
    #100;
      
    iA=0;
    iB=1;
    iC=1;
    #100;
    
    iA=1;
    iB=0;
    iC=0;
    #100;
    
    iA=1;
    iB=0;
    iC=1;
    #100;
    
    iA=1;
    iB=1;
    iC=0;
    #100;
    
    iA=1;
    iB=1;
    iC=1;
    #100;
    end
endmodule
