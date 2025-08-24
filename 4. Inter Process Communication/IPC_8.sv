//tranfer of data using mailbox with custom constructor
class generator;
	int data_g = 111;
	mailbox #(int) mbx;

	function new (mailbox #(int) mbx);
		this.mbx = mbx;
	endfunction

	task run();
		mbx.put(data_g);
		$display("[GEN]: data form generator: %0d", data_g);
	endtask

endclass

class driver;
	int data_d;
	mailbox #(int) mbx;

	function new (mailbox #(int) mbx);
		this.mbx = mbx;
	endfunction

	task run();
	mbx.get(data_d);
		$display("[DRV]: data from driver: %0d", data_d);
	endtask
endclass

module tb;
	generator g;
	driver d;
	mailbox #(int) mbx;

	initial begin
		mbx = new();
		g = new(mbx);
		d = new(mbx);

		g.run();
		d.run();
	end

endmodule
