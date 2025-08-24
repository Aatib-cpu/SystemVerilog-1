//constructor 
class first;
	int data;
	function new (input int datain = 1);
		data = datain;
	endfunction
endclass

module fundamental_constructor;
	first f1;
	initial begin
		f1 = new(100);
		$display("f1.data: %0d",f1.data);
	end

endmodule
