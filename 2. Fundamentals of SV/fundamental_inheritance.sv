//inheritance in sv
class first;
	local int data1;
	function void get_data1(input int data1);
		this.data1 = data1; 
	endfunction

	function show_data1();
		$display("data1: %0d", this.data1);
	endfunction
endclass

class second extends first;
	local int data2;
	function void get_data2(input int data2);
		this.data2 = data2; 
	endfunction
	function show_data2();
		$display("data2: %0d", this.data2);
	endfunction

endclass

module tb;
	second s;

	initial begin
		s = new();
		s.get_data1(11);
		s.show_data1();
		s.get_data2(12);
		s.show_data2();
	end

endmodule
