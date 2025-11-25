module dec3_to_8(
	input [2:0]address,
	input en,
	output reg [7:0]y
	);
	always @(*) begin
		y = 8'b0;
		if(en)
			y[address] = 1'b1;
	end
endmodule 