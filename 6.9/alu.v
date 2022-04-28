`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 19:19:03
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output reg [31:0] r,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
    );
always @ (*)
begin
    case(aluc)
        4'b0000://ADDU
            begin
            {carry,r}=a+b;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b0010://ADD
            begin
            r=a+b;
            overflow=((a[31]==b[31])&&(~r[31]==a[31]))?1:0;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b0001://SUBU
            begin
            {carry,r}=a-b;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b0011://SUB
            begin
            r=a-b;
            overflow=((a[31]==0&&b[31]==1&&r[31]==1)||(a[31]==1&&b[31]==0&&r[31]==0))?1:0;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b0100://AND
            begin
            r=a&b;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b0101://OR
            begin
            r=a|b;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b0110://XOR
            begin
            r=a^b;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b0111://NOR
            begin
            r=~(a|b);
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b1000://LUI
            begin
            r={b[15:0],16'b0};
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b1001://LUI
            begin
            r={b[15:0],16'b0};
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b1011://SLT
            begin
            if(a[31]==1&&b[31]==0)
                r=1;
            else if(a[31]==0&&b[31]==1)
                r=0;
            else
                r=(a<b)?1:0;
            zero=((a-b)==0)?1:0;
            negative=(r==1)?1:0;
            end
        4'b1010://SLTU
            begin
            r=(a<b)?1:0;
            carry=r;
            zero=((a-b)==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b1100://SRA
            begin
            r=($signed(b))>>>a;
            if(a>0)
                carry=b[a-1];
            else
                carry=0;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b1110://SLL/SLA
            begin
            {carry,r}=b<<a;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b1111://SLL/SLA
            begin
            {carry,r}=b<<a;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
        4'b1101://SRL
            begin
            r=b>>a;
            if(a>0)
                carry=b[a-1];
            else
                carry=0;
            zero=(r==0)?1:0;
            negative=(r[31]==1)?1:0;
            end
    endcase           
end
endmodule
