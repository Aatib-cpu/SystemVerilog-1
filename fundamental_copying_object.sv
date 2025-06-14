//copying object
class shop;
	local bit [2:0] data;
	function get_data(input bit [2:0] data);
		this.data = data;
	endfunction

	task show_data();
		$display("data: %0d",this.data);
	endtask: show_data
endclass

module tb;
	shop a1;
	shop b1;
	initial begin
		a1 = new();
		a1.get_data(3'd2);
		a1.show_data;
		b1 = new a1;
		b1.show_data;
		a1.get_data(3'd7);
		a1.show_data;
      	b1.show_data;//changing valuw of a1 wont afftect b1 value becouse it copies value not addtess
	end
endmodule
