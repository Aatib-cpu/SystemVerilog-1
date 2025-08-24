//randc with different space can repeat randome values
class generator;
	randc bit [2:0] a, b;
	bit [2:0] min, max;
	
	extern function void pre_randomize(bit[2:0],bit[2:0]);

	extern function void post_randomize();

	extern constraint data_constraint;

endclass

function void generator::pre_randomize (input bit[2:0] min, max);
	this.min = min;
	this.max = max;
endfunction;

constraint generator::data_constraint{
	a inside{[min:max]};
	b inside{[min:max]};
};

function void generator::post_randomize ();
	$display("a: %0d, b: %0d and sum: %0d", a, b, a+b);
endfunction;

module tb;
	generator g;
	initial begin
		g = new();
		g.pre_randomize(3'd1,3'd4);
		for (int i = 0; i < 10; i++) begin
			assert(g.randomize()) begin
				g.post_randomize();
			end
			else begin
				$display("randomize failed");
			end
		end
	end
endmodule
