module adder8_tb;
	reg[7:0] A, B;
	wire[7:0] SUM;
	wire COUT;
	adder8 uut(
		.A(A),
		.B(B),
		.SUM(SUM),
		.COUT(COUT)
	);
	initial begin
		$display("Time | A | B | SUM | COUT");
		$monitor("%t | %b | %b | %b | %b", $time, A, B, SUM, COUT);
		
		A = 'b00110011;
		B = 'b10101010;
		#10;
 		
		A = 'b11100011;
		B = 'b01010101;
		#10;

		A = 'b00001111;
		B = 'b01010101;
		#10;
	
		A = 'b11001100;
		B = 'b10101010;
		#10;
		
		$finish;
	end
endmodule 