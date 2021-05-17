module labL; 
reg [31:0] a, b; 
reg [31:0] expect; 
reg [2:0] op; 
wire ex; 
wire [31:0] z; 
reg ok, flag; 
yAlu mine(z, ex, a, b, op); 
initial 
begin 
  repeat  (10)  
  begin  
    a  =  $random;  
    b  =  $random;  
    flag = $value$plusargs("op=%d", op); 
    // The oracle: compute "expect" based on "op" 
    #1;  
    // Compare the circuit's output with "expect" 
    // and set "ok" accordingly 
    // Display ok and the various signals 
    $finish;  
end 
endmodule 
