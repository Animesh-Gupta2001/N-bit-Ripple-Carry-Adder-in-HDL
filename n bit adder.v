`timescale 1ns / 1ps
//verilog code for n-bit ripple carry full adder
module N_bit_adder(a,b,cin,sum,cout);
parameter n=8;		//currently set to 8, can be changed to any value
input [n-1:0] a,b; input cin;
output [n-1:0] sum; output cout;
wire [n-1:0] c; //for internal carries

genvar i;
generate
for(i = 0; i < n; i = i + 1) begin: n_bit_adder
if(i==0)
full_adder f(a[0],b[0],cin,sum[0],cout[0]);
else
full_adder f(a[i],b[i],c[i-1],sum[i],cout[i]);
end
assign cout=carry[n-1];
endgenerate
endmodule

//verilog code for 1-bit full adder
module full_adder(x,y,z,S,C);
input x,y,z; output S,C;
assign {C,S} = x + y + z;
endmodule