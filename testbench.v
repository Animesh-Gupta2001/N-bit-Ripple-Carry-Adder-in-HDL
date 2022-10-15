`timescale 1ns / 1ps

module n_bit_adder_tb;
//inputs
reg [7:0] a,b; //change size of register depending on value of parameter in module
reg cin;
//outputs
wire [7:0] sum;  //change size of register depending on value of parameter in module
wire cout;

N_bit_adder a(a,b,cin,sum,cout); //instantiation of module under testing

initial begin
a = 01010101; b = 00110011; cin=0;
#10 a = 10101100; b = 10110011: cin = 1;
end
endmodule