//coustomr_constructor
class first;
	bit [3:0] data_bit;
	shortint data_si;
	int data_i;
  function new (input bit[3:0] data_bit, input shortint data_si, input int data_i);
		this.data_bit = data_bit;
		this.data_si = data_si;
		this.data_i = data_i;
	endfunction
endclass

module fundamental_custom_constructor;
	first f;
	initial begin
      f = new(.data_si(10),.data_bit(4'd10),.data_i(10));
		$display("data_bit: %0d, data_si: %0d, data_i: %0d",f.data_bit,f.data_si,f.data_bit );
	end
endmodule

