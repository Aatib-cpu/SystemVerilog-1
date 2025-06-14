//task and funciton in class.
class Complex;
	int r;
	int i;
	function void set_data(input int r, input int i);
		this.r = r;
		this.i = i;
	endfunction

	task display();
		$display("complex number: %0d + (%0d)i", r, i);
	endtask
endclass 

module tb;
	Complex c;
	initial begin
		c = new();
		c.set_data(45,19);
		c.display();
	end
endmodule
