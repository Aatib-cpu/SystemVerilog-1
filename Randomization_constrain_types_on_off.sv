//":=" means equal weights ot all ranges
//":/" means weight is divided equally among ranges

class generator;
	rand bit[3:0] a;
	rand bit rst, ce;

	constraint rst_constraint {
		rst dist{0:=50,1:=50};
	}
	constraint ce_constraint {
		ce dist{0:=50,1:=50};
	}
	constraint implication_constraiont {
		{rst==0}->{ce==1};
	}
	constraint equivalence_constraint {
		{rst==0}<->{ce==1};
	}

endclass

module tb;
	generator g;
	initial begin
		g = new();
		//By defalut all constraint are one
		g.equivalence_constraint.constraint_mode(0);//0 means OFF and 1 means ON
		$display("g.rst_constraint.constraint_mode(): %0d",g.rst_constraint.constraint_mode());
		$display("g.ce_constraint.constraint_mode(): %0d",g.ce_constraint.constraint_mode());
		$display("g.implication_constraiont.constraint_mode(): %0d",g.implication_constraiont.constraint_mode());
		$display("g.equivalence_constraint.constraint_mode(): %0d",g.equivalence_constraint.constraint_mode());
		for (int i = 0; i < 10; i++) begin
			assert(g.randomize())
				$display("a:%0d | rst:%0d | ce:%0d",g.a,g.rst,g.ce);
			else
				$display("randomization failed");
		end
	end

endmodule
