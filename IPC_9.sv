//
class transaction;
	randc bit[3:0] din1;
	randc bit[3:0] din2;
	bit[4:0] dout;
endclass

class generator;
	mailbox #(transaction) mbx;
	function new (mailbox #(transaction) mbx);
		this.mbx = mbx;
	endfunction
	transaction t;
	task run();
		t = new();
		for (int i = 0; i < 10; i++) begin
			assert(t.randomize())
				$display("[GEN]: Data transmitted from generator- din1: %0d and din2: %0d", t.din1, t.din2);
			else begin
				$display("[GEN]: Randomization failed");
			end
			mbx.put(t);
			#10;
		end
	endtask
endclass


class driver;
	mailbox #(transaction) mbx;
	function new (mailbox #(transaction) mbx);
		this.mbx = mbx;
	endfunction
	transaction t;
	task run();
		t = new();
		forever begin
			mbx.get(t);
			$display("[DRV]: Data recieved from generator- din1: %0d and din2: %0d", t.din1, t.din2);
			#10;
		end
	endtask
endclass

module tb;
	transaction t;
	mailbox #(transaction) mbx;
	generator g;
	driver d;

	initial begin
		mbx = new();
		t = new();
		g = new(mbx);
		d = new(mbx);
		
		fork
			g.run();
			d.run();
		join
	end

endmodule
