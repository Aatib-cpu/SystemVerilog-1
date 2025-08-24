//Example of difference constraints
class generator;
	randc bit [3:0] a,b;
	/*constraint data {
		a inside {[1:2], [6:9]};
		b inside {[3:10]};
	}*/

	constraint data {
		!(a inside {[0:7]});
		!(b inside {[4:7]});
	}

	/*constraint data {
		//a>5&&a<10;b>5&&b<15;
		a%2==0; b%2!=0; //a is even and b is odd
	};*/
endclass

module tb;
	generator g;
	initial begin
		for (int i = 0; i < 10; i++) begin
			g = new();
			assert(g.randomize())
				$display("a: %0d and b: %0d", g.a, g.b);
			else begin
				$display("randomize failed");
			end
		end
	end

endmodule
