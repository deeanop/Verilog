`timescale 1ns/1ps
module dec2_to_4_tb;
	reg A, B, E;
	wire D3, D2, D1, D0;
	dec2_to_4 uut(
		.A(A),
		.B(B),
		.E(E),
		.D0(D0),
		.D1(D1),
		.D2(D2),
		.D3(D3)
	);
	initial begin
		$monitor("Time = %0t | E = %b, A = %b, B = %b, D0 = %b, D1 = %B, D2 = %b, D3  = %b", $time, E, A, B, D0, D1, D2, D3);
		E = 1'b0; A = 1'b0; B = 1'b0; #10;
		E = 1'b0; A = 1'b0; B = 1'b1; #10;
		E = 1'b0; A = 1'b1; B = 1'b0; #10;
		E = 1'b0; A = 1'b1; B = 1'b1; #10;
		E = 1'b1; A = 1'b0; B = 1'b0; #10;
		E = 1'b1; A = 1'b0; B = 1'b1; #10;
		E = 1'b1; A = 1'b1; B = 1'b0; #10;
		E = 1'b1; A = 1'b1; B = 1'b1; #10;
		$finish;
	end
endmodule
 