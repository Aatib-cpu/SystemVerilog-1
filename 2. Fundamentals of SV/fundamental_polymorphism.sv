//example of virtual and polymorphism
class first;
	local int data1=10;
	function void get_data1(input int data1);
		this.data1 = data1; 
	endfunction

	virtual function void show_data();
		$display("data1: %0d", this.data1);
	endfunction
endclass

class second extends first;
	local int data2=20;
	function void get_data2(input int data2);
		this.data2 = data2; 
	endfunction
	function void show_data();
		$display("data2: %0d", this.data2);
	endfunction

endclass

module tb;
	first f;
	second s;
	initial begin
		s = new();
		f = new();
		f = s;
		f.show_data();
	end
endmodule
//f.show_data() and s.show_data() should show their corresponding show_data
//function but because of virtual keyword child class function is called.
