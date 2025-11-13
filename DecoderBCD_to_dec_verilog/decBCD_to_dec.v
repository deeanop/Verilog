module decBCD_to_dec(
	input E, A, B, C, D,
	output D0, D1, D2, D3, D4, D5, D6, D7, D8, D9
);
	assign D0 = E & ~A & ~B & ~C & ~D;
	assign D1 = E & ~A & ~B & ~C & D;
	assign D2 = E & ~A & ~B & C & ~D;
	assign D3 = E & ~A & ~B & C & D;
	assign D4 = E & ~A & B & ~C & ~D;
	assign D5 = E & ~A & B & ~C & D;
	assign D6 = E & ~A & B & C & ~D;
	assign D7 = E & ~A & B & C & D;
	assign D8 = E & A & ~B & ~C & ~D;
	assign D9 = E & A & ~B & ~C & D;
endmodule
  