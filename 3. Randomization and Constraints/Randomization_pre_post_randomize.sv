//pre and post randomize function
class generator;
	randc bit [3:0]a,b;
	int max;
	int min;
	function void pre_randomize(int max, int min);
		this.max = max;
		this.min = min;
	endfunction

	constraint data{
		a inside {[max:min]};
		b inside {[max:min]};
	}

	function void post_randomize();
		$display("a: %0d and b: %0d", a,b);
	endfunction
endclass

module tb;
	generator g;
	initial begin
		g = new();
		g.pre_randomize(3,5);
		for (int i = 0; i < 10; i++) begin
			assert(g.randomize())
				g.post_randomize();
			else
				$display("randomization failed");
		end
	end
endmodule
