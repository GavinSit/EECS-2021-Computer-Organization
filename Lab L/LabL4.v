module labL;
parameter SIZE = 32;
reg a0, a1,a2, a3, c;
wire z;
yMux4to1 #(SIZE) my_mux(z, a0, a1, a2, a3, c); 



initial
begin
	repeat (500) 
	begin 
	   a0 = $random;  
	   a1 = $random; 
	   a2 = $random;  
	   a3 = $random;  
	   c = $random % 2;
	   #10;   
	   //expect = a0 + a1 + a2 + a3 + c;
	//if (expect === z)
		$display("a0=%d a1=%d a2=%d a3=%d c=%d z=%d", a0, a1, a2, a3, c, z);
	//else 
	//	$display("Fail: a0=%b a1=%b a2=%b a3=%b c=%b z=%b", a0, a1, a2, a3, c, z);
	//end
	end 
	$finish;
end
endmodule
