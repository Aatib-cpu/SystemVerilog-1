//Example of shallow copy in SV
class first;
	int data1=10;
endclass

class second;
	int data2=20;
	first f;
	function new();
		f = new();
	endfunction
endclass

module tb;
	second s1, s2;
	initial begin
		s1 = new();
		s2 = new s1;
		$display("s1.f.data1: %0d and s1.data2: %0d", s1.f.data1, s1.data2);
		$display("s2.f.data1: %0d and s2.data2: %0d", s2.f.data1, s2.data2);
		s1.data2 = 5;
		s1.f.data1 = 15;
		$display("s1.f.data1: %0d and s1.data2: %0d", s1.f.data1, s1.data2);
		$display("s2.f.data1: %0d and s2.data2: %0d", s2.f.data1, s2.data2);
	end
endmodule
// data2 of second funciton is copied but data1 for first function is not rather
// both object are pointing to same location(only reference is passed).
