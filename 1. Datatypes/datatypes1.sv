`timescale 1ns/1ps
// Code your testbench here
// or browse Examples
module datatypes1;

//variables--Fixed--2_states--signed
bit a_bit = 1;
byte a_byte = 7;
shortint a_shortint = 3;
longint a_longint = 35;

//variables--Fixed--2_state--unsigned
bit [7:0] b = 8'h45;
bit [15:0] c = 16'h34;

//variables--floating_point
real h = 34.45;

//variables--Fixed--4_state
int i = 34;

//time and realtime 
time fix_time;
realtime real_time;

string mystr = "Hello";

initial begin
#15.456
fix_time = $time();
real_time = $realtime();
$display("a_bit: %0b", a_bit);
$display("a_byte: %0d", a_byte);
$display("a_shortint: %0d", a_shortint);
$display("a_longint: %0d", a_longint);
$display("b: %0b", b);
$display("c: %0b", c);
$display("h: %2.4f", h);
$display("i: %0d", i);
$display("mystr: %s", mystr);
$display("time: %0t", fix_time);
$display("realtime: %0t", real_time);
end


endmodule


