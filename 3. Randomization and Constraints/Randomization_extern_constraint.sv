//External function and constraints
class generator;
	randc bit [3:0] a, b;
	extern constraint data;
	extern function void display();
endclass

constraint generator::data {
	a inside {[4:10]};
	b inside {[4:10]};
};

function void generator::display();
	$display("a: %0d and b: %0d", a, b);
endfunction

module tb;
	generator g;
	initial begin
		for (int i = 0; i < 10; i++) begin
			g = new();
			assert(g.randomize())
				g.display();
			else begin
				$display("randomization failed");
			end
		end
	end
endmodule
