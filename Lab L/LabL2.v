module labL;
reg flaga, flagb, flagc, a, b, c;

yMux2 my_Mux(z, a, b, c);
initial
begin
	flaga = $value$plusargs("a=%b", a);
	flagb = $value$plusargs("b=%b", b);
	flagc = $value$plusargs("c=%b", c);
			
	#10;
	$display("a=%b b=%b c=%b z=%b", a, b, c, z);
	$finish;
end
endmodule

