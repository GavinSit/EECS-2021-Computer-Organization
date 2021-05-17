module labK;

reg [1:0] expect;
reg a, b, cin, temp1, temp2, temp3;
wire output1, output2, output3, cout, z;
integer i, j, k;

xor my_xor(output1, a, b);
and my_and(output2, a, b); 
xor my_xor(z, output1, cin);
and my_and(output3, output1, cin);
or my_or(cout, output2, output3);

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
			cin = k;

			expect = a + b + cin;

			#1;
			if (expect[0] === z && expect[1] === cout)
				$display("PASS: a=%b b=%b c=%b z=%b", a, b, cin, z);
			else
				$display("FAIL: a=%b b=%b c=%b z=%b", a, b, cin, z);
		   
		end
        end
end
$finish;
end

endmodule
