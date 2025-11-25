module PIPORegister(
	input read_en, write_en, clk, clr,
	input [7:0]data_rd,
	output [7:0]data_wr
	);
	reg [7:0]D_input;
	reg [7:0]Q_output;
	genvar i;
	generate
		for(i = 0; i <= 7; i = i + 1) begin: inst
			andGate and_in_inst(
				.a(read_en),
				.b(data_rd[i]),
				.z(D_input[i])
			);
			DFlipFlop dff_inst(
				.D(D_input[i]),
				.clk(clk),
				.clr(clr),
				.Q(Q_output[i])
			);
			andGate and_out_inst(
				.a(write_en),
				.b(Q_output[i]),
				.z(data_wr[i])
			);
		end
	endgenerate
endmodule
		