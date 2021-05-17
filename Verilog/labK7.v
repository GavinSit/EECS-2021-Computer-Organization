module labK;

reg flaga, flagb, flagc, a, b, c;
wire output1, output2;



not my_not(tmp, c);
and my_and(output1, a, tmp);
and my_and(output2, b, c);
xor my_xor(z, output1, output2);

initial
begin	
flaga = $value$plusargs("a=%b", a);
flagb = $value$plusargs("b=%b", b);
flagc = $value$plusargs("c=%b", c);
	#10 $display("a=%b b=%b c=%b z=%b", a, b, c, z);    
	$finish;
end
endmodule
