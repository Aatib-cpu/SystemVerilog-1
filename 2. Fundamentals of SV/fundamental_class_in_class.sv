//class in class
class first;
	int d_int;
	bit [1:0] d_bit;
	task disp();
		$display("value of d_int: %0d and d_bit: %0d", d_int, d_bit);
	endtask
endclass 

class second;
	first f;
	function new ();
		f = new();
	endfunction
endclass

module tb;
	second s;
	initial begin
		s = new();
		s.f.d_int = 12;
		s.f.d_bit = 2'd1;
		s.f.disp();
	end
endmodule
