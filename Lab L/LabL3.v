module labL;
parameter SIZE = 64;
reg [SIZE-1:0]a;
reg [SIZE-1:0]b;
reg c;
wire [SIZE-1:0]z;
integer i,j,k;
yMux #(SIZE) mux(z,a,b,c);

initial 
repeat (10)
    begin
	a = $random;  
   	b = $random;  
   	c = $random % 2; 
    	#1$display("a=%d b=%d c=%d z=%d",a,b,c,z);

    end
endmodule
