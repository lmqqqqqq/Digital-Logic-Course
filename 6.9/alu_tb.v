`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 21:05:24
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
reg [31:0] a;
reg [31:0] b;
reg [3:0] aluc;
wire [31:0] r;
wire zero;
wire carry;
wire negative;
wire overflow;

alu uut(a,b,aluc,r,zero,carry,negative,overflow);
initial
    begin
    //add
         aluc=4'b0010;        
         a=32'hf2340000;
         b=32'h80000000;
    #20  a=32'h7fffffff;
         b=32'h70000001;
    #20  a=32'h7fffffff;
         b=32'hf0000001;
    #20  a=32'hffffffff;
         b=32'h00000001;
    //addu          
    #20  aluc=4'b0000;   
         a=32'hf2340000;
         b=32'h80000000;
    #20  a=32'h7fffffff;
         b=32'h70000001;
    #20  a=32'hffffffff;
         b=32'h00000001;
    //sub    
    #20  aluc=4'b0011;        
         a=32'h72340000;
         b=32'h60000000;
    #20  a=32'h7fffffff;
         b=32'hf0000001;
    #20  a=32'hf00fffff;
         b=32'h7ffffff1;
    #20  a=32'hffffffff;
         b=32'hffffffff;
    #20  a=32'hf0000000;
         b=32'h0fffffff; 
    //subu
    #20  aluc=4'b0001;        
         a=32'h72340000;
         b=32'h60000000;
    #20  a=32'h7fffffff;
         b=32'hf0000001;
    #20  a=32'hffffffff;
         b=32'hffffffff;
    #20  a=32'hf0000000;
         b=32'h0fffffff; 
    //and
    #20  aluc=4'b0100;        
         a=32'h72340000;
         b=32'h60000000;
    #20  a=32'h7fffffff;
         b=32'h00000000; 
    //or
    #20  aluc=4'b0101;        
         a=32'h00000000;
         b=32'h00000000;
    #20  a=32'h7fffffff;
         b=32'hf0000001;
    //xor
    #20  aluc=4'b0110;        
         a=32'ha0000000;
         b=32'h50000000;
    #20  a=32'h7fffffff;
         b=32'hf0000001;
    //nor
    #20  aluc=4'b0111;        
         a=32'h123451ff;
         b=32'h60000000;
    #20  a=32'h7fffffff;
         b=32'hf0000001;
    //slt
    #20  aluc=11'b1011;        
         a=32'h72340000;
         b=32'hf0000000;
    #20  a=32'h7000000f;
         b=32'h7f000001;
    #20  a=32'hf0001231;
         b=32'h7ac34545;
    //sltu
    #20  aluc=4'b1010;        
         a=32'h72340000;
         b=32'hf0000000;
    #20  a=32'h7000000f;
         b=32'h7f000001;
    #20  a=32'hf0001231;
         b=32'h7ac34545;
    //shl
    #20  aluc=4'b111x;
         b=32'hffffffff;
         a=32'd5;
    //shr
    #20  aluc=4'b1101;
         b=32'hffffffff;
         a=32'd5;
    //sar
    #20  aluc=4'b1100;
         b=32'hffffffff;
         a=32'd3;
    #20  b=32'h0fffffff;
         a=32'd5;
    end
endmodule

