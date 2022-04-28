`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/24 00:32:32
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input ena,
    input wena,
    input [4:0] addr,
    input [31:0] data_in,
    output [31:0] data_out
    );
    reg [31:0] bram[31:0];

always @ (posedge clk)
begin
    if(ena)
        begin
        if(wena)
            begin
            bram[addr]<=data_in;
            end
        end
end
assign data_out=ena? bram[addr]:32'bz;
endmodule
