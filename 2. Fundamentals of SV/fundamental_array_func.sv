//array in function
module fundamental_array_func;
	bit[3:0]arr[15];
	function automatic void init_arr(ref bit[3:0]a[15]);
		for(int i=0;i<15;i++) begin
			a[i]=i;
		end
	endfunction

	initial begin
		init_arr(arr);
		for (int i = 0; i < 15; i++) begin
			$display("a[%0d]: %0d",i,arr[i]);
		end
	end
endmodule
