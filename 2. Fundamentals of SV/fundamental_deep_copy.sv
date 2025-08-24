//Example of Deep copy
class first;
	int d1=2;
	function first copy();
		copy = new();
		copy.d1 = d1;
	endfunction
endclass

class second;
	int d2=2;
	first f1;
	function new();
		f1 = new();
	endfunction

	function second copy();
		copy = new();
		copy.d2 = d2;
		copy.f1 = f1.copy;
	endfunction

endclass

module tb;
	second s1,s2;
	initial begin
		s1 = new();
		s2 = new();
		s2 = s1.copy;
		s2.f1.d1 = 1;
		s2.d2 = 1;
		$display("s1.f1.d1: %0d and s1.d2: %0d",s1.f1.d1,s1.d2);
		$display("s2.f1.d1: %0d and s2.d2: %0d",s2.f1.d1,s2.d2);
	end
endmodule
//s2 is perfect copy of s1 and changing value in s1 doesnt affect s2 and vice-versa
