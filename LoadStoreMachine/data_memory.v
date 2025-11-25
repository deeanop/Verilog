module dataMemory(
	input read_en_global, write_en_global,
	input clk, en, clr,
	input [7:0]mem_data_wr,
	input [2:0]address,
	output [7:0]mem_data_rd
	);
	wire [7:0]reg_sel;
	wire [7:0]reg_out[7:0];
	dec3_to_8 dec(
		.address(address),
		.en(en),
		.y(reg_sel)
	);
	genvar i;
	generate
		for(i=0; i<=7; i=i+1) begin: reg_inst
			DPIPORegister reg_i(
				.write_en(write_en_global & reg_sel[i]),
				.clk(clk),
				.clr(clr),
				.data_wr(mem_data_wr),
				.data_rd(reg_out[i]),
				.read_en(read_en_global & reg_sel[i])
			);
		end
	endgenerate 
	assign mem_data_rd = read_en_global ? reg_out[address] : 8'b0;
endmodule
		