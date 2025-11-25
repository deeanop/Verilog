module multiplexer4_to_1(
	input D0, D1, D2, D3, S0, S1,
		output Y
);
assign Y = (S0 == 0 && S1 == 0)? D0:
	(S0 == 0 && S1 == 1)? D1:
	(S0 == 1 && D1 == 0)? D2:
	D3;
endmodule
