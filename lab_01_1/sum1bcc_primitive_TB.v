module sum1bcc_primitive_TB;

  reg x;
  reg y;
  reg c;
  wire out;
  wire z;

  sum1bcc_primitive uut(x, y, c, out, z);

  initial begin
    x = 0; y = 0; c = 0; #5;
    $display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
    x = 0; y = 0; c = 1; #5;
    $display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
    x = 0; y = 1; c = 0; #5;
    $display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
    x = 0; y = 1; c = 1; #5;
    $display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
    x = 1; y = 0; c = 0; #5;
    $display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
    x = 1; y = 0; c = 1; #5;
    $display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
    x = 1; y = 1; c = 0; #5;
    $display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);
    x = 1; y = 1; c = 1; #5;
    $display("x=%b, y=%b, c=%b, z=%b, out=%b", x, y, c, z, out);

    $finish;
  end

  initial begin: TEST_CASE
    $dumpfile("sum1bcc_primitive_TB.vcd");
    $dumpvars(-1, uut);
    #200 $finish;
  end

endmodule

