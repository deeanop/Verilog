`timescale 1 ns/1 ps
module decBCD_to_dec_tb;
	reg E, A, B, C, D;
	wire D0, D1, D2, D3, D4, D5, D6, D7, E8, D9;
	decBCD_to_dec uut(
		.E(E),
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.D0(D0),
		.D1(D1),
		.D2(D2),
		.D3(D3),
		.D4(D4),
		.D5(D5),
		.D6(D6),	
		.D7(D7),
		.D8(D8),
		.D9(D9)
	);
	initial begin
		$display("Time | E | A | B | C | D | D0 | D1 | D2 | D3 | D4 | D5 | D6 | D7 | D8 | D9");
		$monitor("%0t | %b | %b | %b | %b | %b | %b | %b | %b | %b | %b | %b | %b | %b | %b | %b", $time, E, A, B, C, D, D0, D1, D2, D3, D4, D5, D6, D7, D8, D9);
		
		E = 1'b0; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; #10;
		E = 1'b0; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1; #10;
		E = 1'b0; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0; #10;
		E = 1'b0; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; #10;
		E = 1'b0; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; #10;
		E = 1'b0; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1; #10;
		E = 1'b0; A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; #10;
		E = 1'b0; A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; #10;	
		E = 1'b0; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; #10;
		E = 1'b0; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1; #10;
		E = 1'b1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; #10;
		E = 1'b1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1; #10;
		E = 1'b1; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0; #10;
		E = 1'b1; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; #10;
		E = 1'b1; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; #10;
		E = 1'b1; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1; #10;
		E = 1'b1; A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; #10;
		E = 1'b1; A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; #10;	
		E = 1'b1; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; #10;
		E = 1'b1; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1; #10;
		$finish;
	end
endmodule
		