`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 23:22:52
// Design Name: 
// Module Name: pcreg_tb
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


module pcreg_tb();
    reg clk;
    reg rst;
    reg ena;
    reg [31:0] data_in;
    wire [31:0] data_out;

pcreg uut(clk,rst,ena,data_in,data_out);
always
begin
   # 100 clk = ~clk;
end

initial
    begin
    clk=1;
    rst=1;
    ena=1;
    data_in=32'b00000000_00000000_00000000_00000011;
    #100;
    
    rst=0;
    ena=1;
    data_in=32'b00000000_00000000_00000000_00000111;
    #100;
    
    rst=1;
    ena=0;
    data_in=32'b00000000_00000000_00000000_00000111;
    #100;
    
    rst=0;
    ena=1;
    data_in=32'b00000000_00000000_00000000_00000111;
    #100;
    
    rst=0;
    ena=1;
    data_in=32'b00000000_00000000_00000000_00000011;
    #100;
     
    rst=0;
    ena=1;
    data_in=32'b00000000_00000000_00000000_00000011;
    #100;
      
    rst=0;
    ena=0;
    data_in=32'b00000000_00000000_00000000_00000111;
    #100;
    end
    
endmodule
