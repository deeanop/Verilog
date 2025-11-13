module dec2_to_4(
	input A, B, E,
	output D0, D1, D2, D3
	);
	assign D0 = E & ~A & ~B;
	assign D1 = E & A & ~B;
	assign D2 = E & ~A & B;
	assign D3 = E & A & B;
endmodule
