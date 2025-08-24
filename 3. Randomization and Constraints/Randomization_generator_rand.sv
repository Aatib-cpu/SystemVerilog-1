//Generator class with "rand" keyword
class generator;
	rand bit [3:0] a, b;
	bit [3:0] y;
endclass

module tb;
	generator g;
	initial begin
		g = new();
		for (int i = 0; i < 10; i++) begin
			if (g.randomize())
				$display("rand value of a: %0d and %0d", g.a, g.b);
			else 
				$display("randomize is failed");
		end
	end
endmodule
