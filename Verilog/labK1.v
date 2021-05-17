module labK;
reg [31:0] x; //a 32-but register

initial
begin
$display("time = %5d, x = %b", $time, );
//x = 0;
one = &x;            // and reduction
two = x[1:0];        // part-select
three = {one, two};  // concatenate
x = 32'hffff0000;
$display("time = %5d, x = %b", $time, );
x = x + 2;
$display("time = %5d, x = %b", $time, );
end

endmodule

