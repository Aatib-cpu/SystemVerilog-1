
`timescale 1ns/1ps 

module clk_div();

reg clk = 0;
reg clk50 = 0;
reg clk25 = 0;

always #5 clk = ~clk; // Time periord = 10 ns; freq = 100 MHz
always #10 clk50 = ~clk50; // Time periord = 20 ns; freq = 50 MHz
always #20 clk25 = ~clk25; // TIme periord = 40 ns; freq = 25 MHz

initial begin 
$dumpfile("clk_div.vcd");
$dumpvars(0,clk_div.sv);
#200 $finish();
end

endmodule
