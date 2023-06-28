module sum1bcc_TB;

  reg x;
  reg y;
  reg c;
  wire out;
  wire z;


sum1bcc uut(x, y, c,out,z);


initial begin
x=0; y=0; c=0; #3;
$display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
x=0; y=0; c=1; #3;
$display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
x=0; y=1; c=0; #3;
$display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
x=0; y=1; c=1; #3;
$display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
x=1; y=0; c=0; #3;
$display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
x=1; y=0; c=1; #3;
$display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
x=1; y=1; c=0; #3;
$display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
x=1; y=1; c=1; #3;
$display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);



end

initial begin: TEST_CASE
     $dumpfile("sum1bcc_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule //
