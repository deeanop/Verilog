module DFlipFlop(
	input D, clk, clr,
	output reg Q,
	output nQ
	);
	assign nQ = ~Q;
	always @(posedge clk or negedge clr) begin
		if(!clr)
			Q <= 'b0;
		else
			Q <= D;
	end
endmodule

	
