module adder8(
	input [7:0] A, B,
	output COUT, [7:0] SUM
);
assign {COUT, SUM} = A + B;
endmodule
