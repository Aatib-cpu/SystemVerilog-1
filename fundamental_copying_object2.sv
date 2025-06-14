//copy object by method
class first;
	local bit [3:0] a;
	local shortint b;
	function first copy ();
		copy = new();
		copy.a = a;
		copy.b = b;
	endfunction

	function get_data(input bit [3:0] a, input shortint b);
		this.a = a;
		this.b = b;
	endfunction

	function show_data();
		$display("a: %0d and b: %0d",a,b);
	endfunction
endclass

module tb;
	first f1;
	first f2;
	initial begin
		f1 = new();
		f2 = new();
		f1.get_data(4'd10,10);
		f2 = f1.copy; //copy all the parameters of f1 class
		f2.show_data;
	end
endmodule
