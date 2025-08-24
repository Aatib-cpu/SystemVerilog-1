//generator class using randc
//"rand" can have repeatation while "randc" will not reapeat until all combination are finished
//"assert( )" id like if-else
class generator;
	randc bit [3:0] a, b;
	constraint data {
		//a>5&&a<10;b>5&&b<15;
		a%2==0; b%2!=0; //a is even and b is odd
	};
endclass :generator;

module tb;
	generator g;
	initial begin
		g = new();
		for (int i = 0; i < 10; i++) begin
			assert(g.randomize())
				$display("Time: %0tns a: %0d and b: %0d", $time(), g.a, g.b);
			else
				$display("randomize failed");
			#10;
		end
	end

endmodule
