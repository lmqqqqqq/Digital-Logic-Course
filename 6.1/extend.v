module extend # (parameter WIDTH =16)(
   input [WIDTH-1:0] a,
   input sext,
   output [31:0] b
);
assign b= sext? {{(32-WIDTH){a[WIDTH-1]}},a} : {16'b0,a};
endmodule