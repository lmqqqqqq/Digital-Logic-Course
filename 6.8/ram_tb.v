`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/24 01:10:36
// Design Name: 
// Module Name: ram_tb
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


module ram_tb();
reg clk;
reg ena;
reg wena;
reg[4:0] addr;
reg[31:0] data_in;
wire[31:0] data_out;

ram uut(clk,ena,wena,addr,data_in,data_out);
always
begin
	#20 clk = ~clk;
end


initial
    begin
        clk=1;
        ena=0;
        wena=1;
        addr=5'b00010;
        data_in=32'b00000000_00000000_00000000_00000001;
        
  #40   ena=1;
        wena=1;
        addr=5'b00010;
        data_in=32'b00000000_00000000_00000000_10000000;
        
   #40  ena=1;
        wena=0;
        addr=5'b00010;
        data_in=32'b00000000_00000000_00000000_10000000;
        
   #40  ena=0;
        wena=0;
        addr=5'b00010;
        data_in=32'b00000000_00000000_00000000_10000000; 
   end 
endmodule
