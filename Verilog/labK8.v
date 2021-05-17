module labK;

reg a, b, c, expect, temp1, temp2;
wire output1, output2, z;
integer i, j, k;

not my_not(tmp, c);
and my_and(output1, a, tmp);
and my_and(output2, b, c);
xor my_xor(z, output1, output2);

initial
begin	
for (i = 0; i < 2; i = i + 1)
begin
	for (j = 0; j < 2; j = j + 1)
        begin
		for (k = 0; k < 2; k = k + 1)
		begin
			a = i;
			b = j;
			c = k;
			temp1 = a & ~c;
			temp2 = c & b;
			expect = temp1 ^ temp2;

			#1;
			if (expect === z)
				$display("PASS: a=%b b=%b c=%b z=%b", a, b, c, z);
			else
				$display("FAIL: a=%b b=%b c=%b z=%b", a, b, c, z);
		   
		end
        end
end
$finish;
end

endmodule
